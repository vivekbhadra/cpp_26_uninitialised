#include <charconv>
#include <cstdio>
#include <string_view>

constexpr int default_timeout_ms = 1000;

// Reads "timeout_ms=<number>" from a device configuration line.
// The bug: when the key is missing, timeout_ms is never assigned.
[[gnu::noinline]] int read_timeout_ms(std::string_view config)
{
    int timeout_ms;

    constexpr std::string_view key = "timeout_ms=";

    if (const auto pos = config.find(key); pos != std::string_view::npos)
    {
        const char* first = config.data() + pos + key.size();

        const char* last = config.data() + config.size();

        std::from_chars(first, last, timeout_ms);
    }

    return timeout_ms;
}

void open_device(const char* name, std::string_view config)
{
    const int timeout_ms = read_timeout_ms(config);

    if (timeout_ms <= 0)
    {
        std::printf("%-7s no timeout configured, using default %d ms\n", name, default_timeout_ms);
    }
    else
    {
        std::printf("%-7s timeout %d ms\n", name, timeout_ms);
    }
}

int main()
{
    // The empty configuration does not contain "timeout_ms=".
    // Therefore, timeout_ms is returned without being initialized.
    open_device("logger", "");

    return 0;
}
