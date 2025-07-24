# 🌟 Dynamic Design

O **Dynamic Design** é uma arquitetura modular e adaptativa para Flutter que oferece uma maneira eficiente e elegante de alternar entre widgets do **Material Design (Android)** e **Cupertino Design (iOS)** com o mínimo de duplicação de código.  
Utilizando os padrões de projeto **Factory** e **Provider**, este sistema permite que a escolha do estilo visual seja feita de forma automática com base na plataforma, promovendo **experiência nativa consistente** tanto para usuários Android quanto iOS.

Este repositório reúne um conjunto de widgets comuns, como diálogos, seletores, switches, textos, entre outros — todos encapsulados por uma interface única que detecta e aplica o design apropriado dinamicamente.

---

## 📚 Sumário

- [Scaffold](#scaffold)
- [Text](#text)
- [Button](#button)
- [CircularProgressIndicator](#circularprogressindicator)
- [AlertDialog](#alertdialog)
- [Switch](#switch)
- [Checkbox](#checkbox)
- [Radio](#radio)
- [DatePicker](#datepicker)
- [TimePicker](#timepicker)

---

## Scaffold

Estrutura básica de tela com `AppBar` e `body`.  
No Android, é usado `Scaffold`.  
No iOS, é utilizado `CupertinoPageScaffold` com navegação personalizada.

---

## Text

Renderiza um texto estilizado conforme a plataforma.  
Aplica `Text` com estilo do `Theme` no Android e `DefaultTextStyle` com `CupertinoTheme` no iOS.

---

## Button

Botão com rótulo e ação de clique.  
No Android, utiliza `ElevatedButton`.  
No iOS, utiliza `CupertinoButton`.

---

## CircularProgressIndicator

Indicador de progresso circular animado.  
No Android, utiliza `CircularProgressIndicator`.  
No iOS, utiliza `CupertinoActivityIndicator`.

---

## AlertDialog

Diálogo de alerta com título, mensagem e botões personalizados.  
No Android, é utilizado `AlertDialog`.  
No iOS, é utilizado `CupertinoAlertDialog`.

---

## Switch

Botão deslizante de liga/desliga.  
No Android, é usado `Switch`.  
No iOS, `CupertinoSwitch`.

---

## Checkbox

Caixa de seleção boolean para múltiplas escolhas.  
No Android, `Checkbox`.  
No iOS, estilo customizado com `Cupertino`.

---

## Radio

Componente para seleção única dentro de um grupo.  
No Android, `Radio`.  
No iOS, `CupertinoRadio`.

---

## DatePicker

Selecionador de datas com calendário ou rolagem.  
No Android, `showDatePicker`.  
No iOS, `CupertinoDatePicker`.

---

## TimePicker

Selecionador de horário.  
No Android, `showTimePicker`.  
No iOS, `CupertinoTimerPicker`.

---

## 🔮 Mais widgets por vir...

Em breve será incluído novos componentes como:

- TextField
- SnackBar / Notification
- BottomNavigationBar / CupertinoTabBar
- AppBar / NavigationBar
- ExpansionTile
- FloatingActionButton
- Slider
- SegmentedControl

Acompanhe o repositório e contribua! 🚀
