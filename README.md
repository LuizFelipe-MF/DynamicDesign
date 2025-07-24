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

### Android:
![Scaffold Android](images/scaffold_android.png)

### iOS:
![Scaffold iOS](images/scaffold_ios.png)

---

## Text

Renderiza um texto estilizado conforme a plataforma.  
Aplica `Text` com estilo do `Theme` no Android e `DefaultTextStyle` com `CupertinoTheme` no iOS.

### Android:
![Text Android](images/text_android.png)

### iOS:
![Text iOS](images/text_ios.png)

---

## Button

Botão com rótulo e ação de clique.  
No Android, utiliza `ElevatedButton`.  
No iOS, utiliza `CupertinoButton`.

### Android:
![Button Android](images/button_android.png)

### iOS:
![Button iOS](images/button_ios.png)

---

## CircularProgressIndicator

Indicador de progresso circular animado.  
No Android, utiliza `CircularProgressIndicator`.  
No iOS, utiliza `CupertinoActivityIndicator`.

### Android:
![Progress Android](images/progress_android.png)

### iOS:
![Progress iOS](images/progress_ios.png)

---

## AlertDialog

Diálogo de alerta com título, mensagem e botões personalizados.  
No Android, é utilizado `AlertDialog`.  
No iOS, é utilizado `CupertinoAlertDialog`.

### Android:
![AlertDialog Android](images/alertdialog_android.png)

### iOS:
![AlertDialog iOS](images/alertdialog_ios.png)

---

## Switch

Botão deslizante de liga/desliga.  
No Android, é usado `Switch`.  
No iOS, `CupertinoSwitch`.

### Android:
![Switch Android](images/switch_android.png)

### iOS:
![Switch iOS](images/switch_ios.png)

---

## Checkbox

Caixa de seleção boolean para múltiplas escolhas.  
No Android, `Checkbox`.  
No iOS, estilo customizado com `Cupertino`.

### Android:
![Checkbox Android](images/checkbox_android.png)

### iOS:
![Checkbox iOS](images/checkbox_ios.png)

---

## Radio

Componente para seleção única dentro de um grupo.  
No Android, `Radio`.  
No iOS, `CupertinoRadio`.

### Android:
![Radio Android](images/radio_android.png)

### iOS:
![Radio iOS](images/radio_ios.png)

---

## DatePicker

Selecionador de datas com calendário ou rolagem.  
No Android, `showDatePicker`.  
No iOS, `CupertinoDatePicker`.

### Android:
![DatePicker Android](images/datepicker_android.png)

### iOS:
![DatePicker iOS](images/datepicker_ios.png)

---

## TimePicker

Selecionador de horário.  
No Android, `showTimePicker`.  
No iOS, `CupertinoTimerPicker`.

### Android:
![TimePicker Android](images/timepicker_android.png)

### iOS:
![TimePicker iOS](images/timepicker_ios.png)

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
