import yaml


def print_hi(name):
    print("Generating icons...")
    with open(r'icons.yml') as input_file:
        documents = yaml.full_load(input_file)

    with open(r'icons-fontawesome.app', 'w') as output_file:
        output_file.write(r"""module elib-bootstrap/icons-fontawesome
/****************************************
 * DO NOT EDIT! This file is generated. *
 ****************************************/

section Icons
""")
        write_icons(output_file, documents.items(), "solid", "Solid icons", "fas", "i")
        print("Generated solid icons")
        write_icons(output_file, documents.items(), "regular", "Regular icons", "far", "ir")
        print("Generated regular icons")
        write_icons(output_file, documents.items(), "light", "Light icons", "fal", "il")
        print("Generated light icons")
        write_icons(output_file, documents.items(), "duotone", "Duotone icons", "fad", "id")
        print("Generated duotone icons")
        write_icons(output_file, documents.items(), "brands", "Brand icons", "fab", "ib")
        print("Generated brand icons")
        print("Done!")


def write_icons(file, icons, clsId, clsLabel, clsCss, clsPrefix):
    selected_icons = [(iconId, icon) for iconId, icon in icons if clsId in icon["styles"]]
    file.write(r"""
// {}
htmlwrapper{{
""".format(clsLabel))
    for iconId, icon in selected_icons:
        write_icon(file, iconId, icon, clsCss, clsPrefix)
    file.write(r"""}
""")


def write_icon(file, iconId, icon, clsCss, clsPrefix):
    template_name = "{}{}".format(clsPrefix, to_capital_camel_case(iconId))
    file.write("  // {}\n".format(icon["label"]))
    file.write("  {} i[class=\"{} fa-{}\"]\n".format(template_name, clsCss, iconId))


def to_capital_camel_case(snake_str):
    components = snake_str.split('-')
    return ''.join(x.title() for x in components)


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
