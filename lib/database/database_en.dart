class DatabaseEn {
  DatabaseEn._();

  static const aboutMe =
      'Desenvolvedor com mais de 2 anos de experiência no mobile. Trabalho como freelancer a mais de 1 ano, possuo habilidades em Inglês avançadas para conversação.';

  static const apps = [
    {
      'app_type': 'MOBILE APP',
      'name': 'MDAL',
      'description':
          'The application is a virtual clothing store for the regional brand MDAL, where users can purchase clothes and track the progress of their orders.',
      'images': [
        'assets/apps/mdal/',
        'assets/apps/mdal/',
        'assets/apps/mdal/',
      ],
      'link': null,
      'enabled': false
    },
    {
      'app_type': 'MOBILE APP',
      'name': 'Todo List',
      'description':
          'The application provides a simple yet functional interface, allowing the user to add reminders for tasks they need to perform on a specific day.',
      'images': [
        'assets/apps/todo_list/img_1.png',
        'assets/apps/todo_list/img_2.png',
        'assets/apps/todo_list/img_3.png',
        'assets/apps/todo_list/img_4.png',
        'assets/apps/todo_list/img_5.png',
        'assets/apps/todo_list/img_6.png',
      ],
      'link': 'https://github.com/oElberte/todo_list_provider_sqlite',
      'enabled': true
    },
    {
      'app_type': 'MOBILE APP',
      'name': 'AIDA',
      'description':
          'The application offers features for the user to register income and monetary expenses, providing a comprehensive view of the data along with graphs for better control of their financial life.',
      'images': [
        'assets/apps/aida/img_1.png',
        'assets/apps/aida/img_2.png',
        'assets/apps/aida/img_3.png',
        'assets/apps/aida/img_4.png',
      ],
      'link': 'https://play.google.com/store/apps/details?id=br.com.carteiraverde.carteira_verde',
      'enabled': true
    },
    {
      'app_type': 'MOBILE APP',
      'name': 'Pokédex',
      'description':
          'The application provides an interface with all available Pokémon, allowing the user to view details and favorite each one, and it also offers a dark theme for an enhanced experience.',
      'images': [
        'assets/apps/pokedex/img_1.png',
        'assets/apps/pokedex/img_2.png',
        'assets/apps/pokedex/img_3.png',
        'assets/apps/pokedex/img_4.png',
        'assets/apps/pokedex/img_5.png',
      ],
      'link': 'https://github.com/oelberte/pokedex#readme',
      'enabled': true
    },
    {
      'app_type': 'WEBSITE',
      'name': 'Elberte.com',
      'description':
          'This website you are currently on! It has been entirely built using Flutter Web, so that people can learn about my work and contact me if they need any services.',
      'images': ['assets/apps/website/img_1.png'],
      'link': 'https://elberte.com',
      'enabled': true
    }
  ];

  static const skills = [
    {
      'name': 'Flutter',
      'icon': 'assets/skills/icons_2/flutter.png',
      'icon_hovered': 'assets/skills/icons_3/flutter.png',
      'enabled': true
    },
    {
      'name': 'Swift',
      'icon': 'assets/skills/icons_2/swift.png',
      'icon_hovered': 'assets/skills/icons_3/swift.png',
      'enabled': true
    },
    {
      'name': 'Kotlin',
      'icon': 'assets/skills/icons_2/kotlin.png',
      'icon_hovered': 'assets/skills/icons_3/kotlin.png',
      'enabled': true
    },
    {
      'name': 'SQL',
      'icon': 'assets/skills/icons_2/sql.png',
      'icon_hovered': 'assets/skills/icons_3/sql.png',
      'enabled': true
    },
    {
      'name': 'API Rest',
      'icon': 'assets/skills/icons_2/api.png',
      'icon_hovered': 'assets/skills/icons_3/api.png',
      'enabled': true
    },
    {
      'name': 'Git',
      'icon': 'assets/skills/icons_2/git.png',
      'icon_hovered': 'assets/skills/icons_3/git.png',
      'enabled': true
    },
    {
      'name': 'DevOps',
      'icon': 'assets/skills/icons_2/devops.png',
      'icon_hovered': 'assets/skills/icons_3/devops.png',
      'enabled': true
    },
    {
      'name': 'Postman',
      'icon': 'assets/skills/icons_2/postman.png',
      'icon_hovered': 'assets/skills/icons_3/postman.png',
      'enabled': true
    }
  ];

  static const education = [
    {
      'type': 'Bachelor',
      'name': 'Information Systems',
      'university': 'UNA',
      'start_date': 2023,
      'end_date': null,
      'present': true,
      'enabled': true
    },
    {
      'type': 'Specialization',
      'name': 'Flutter and Dart',
      'university': 'Academia do Flutter',
      'start_date': 2023,
      'end_date': null,
      'present': true,
      'enabled': true
    }
  ];

  static const certifications = [
    {
      'name': 'Flutter',
      'institution': 'Cod3r',
      'date': 2022,
      'link': 'https://ude.my/UC-8a060972-2613-44d1-af56-b719c51c8f4e',
      'website': 'https://cod3r.com.br',
      'enabled': true
    },
    {
      'name': 'Swift',
      'institution': 'AppBrewery',
      'date': 2022,
      'link': 'https://ude.my/UC-badfe305-43ea-4a27-ae40-7dc5f072079c',
      'website': 'https://appbrewery.com/',
      'enabled': true
    },
    {
      'name': 'Jornada Dart',
      'institution': 'Academia do Flutter',
      'date': 2023,
      'link': 'https://drive.google.com/file/d/1z5Lr0uiuzaD8UjIPPMEDmERS6LHRsSfk/view?usp=drive_link',
      'website': 'https://academiadoflutter.com.br/',
      'enabled': true
    },
    {
      'name': '9ª Imersão Dart Week',
      'institution': 'Academia do Flutter',
      'date': 2023,
      'link': 'https://drive.google.com/file/d/13_sOrjG2svfckYN0F2Ssg3Y2TGp1e_qv/view?usp=drive_link',
      'website': 'https://academiadoflutter.com.br/',
      'enabled': true
    },
    {
      'name': '10ª Imersão Dart Week',
      'institution': 'Academia do Flutter',
      'date': 2023,
      'link': 'https://drive.google.com/file/d/1O15RJlZ_sHvvRnWQpDZKxfY4GPsFPjP4/view?usp=drive_link',
      'website': 'https://academiadoflutter.com.br/',
      'enabled': false
    }
  ];
}
