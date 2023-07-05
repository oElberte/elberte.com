class Database {
  Database._();

  static const aboutMe =
      'Desenvolvedor com mais de 2 anos de experiência no mobile. Trabalho como freelancer a mais de 1 ano, possuo habilidades em Inglês avançadas para conversação.';

  static const apps = [
    {
      'app_type': 'MOBILE APP',
      'name': 'MDAL',
      'description':
          'O aplicativo é uma loja de roupas virtual da marca MDAL, onde os usuários podem comprar as roupas diretamente e acompanhar os pedidos conforme o administrador atualiza.',
      'images': ['assets/apps/mdal/', 'assets/apps/mdal/', 'assets/apps/mdal/',],
      'link': null,
      'enabled': false
    },
    {
      'app_type': 'MOBILE APP',
      'name': 'Todo List',
      'description':
          'O aplicativo oferece uma interface simples porém funcional, onde o usuário pode adicionar lembretes para tarefas que ele precisa efetuar em algum dia específico.',
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
          'O aplicativo oferece funções para que o usuário cadastre receitas e despesas monetárias, com uma visão ampla dos dados e com gráficos, para maior controle da sua vida financeira.',
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
          'O aplicativo oferece uma interface com todos os Pokémons disponíveis para que o usuário consiga ver detalhes e favoritar cada um, conta com tema escuro para melhor experiência.',
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
          'Este site que você está agora! Feito totalmente utilizando Flutter Web para que as pessoas possam ver sobre meus trabalhos e me contatarem caso precisem de algum serviço.',
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
      'type': 'Bacharel',
      'name': 'Sistemas de Informação',
      'university': 'UNA',
      'start_date': 2023,
      'end_date': null,
      'present': true,
      'enabled': true
    },
    {
      'type': 'Especialização',
      'name': 'Flutter e Dart',
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
