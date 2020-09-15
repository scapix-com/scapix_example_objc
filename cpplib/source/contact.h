#pragma once

#include <string>
#include <memory>
#include <vector>
#include <cstdint>
#include <scapix/bridge/object.h>

namespace cpplib {

class contact : public scapix::bridge::object<contact>
{
public:

    static std::shared_ptr<contact> get_instance() { return std::make_shared<contact>(); }
    std::vector<std::int8_t> int8_vec() const;

};

} // namespace
