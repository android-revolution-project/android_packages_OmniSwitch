.class public Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;


# instance fields
.field private mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

.field private mHexColorInput:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNewColor:Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->init(I)V

    .line 55
    return-void
.end method

.method private init(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 60
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 61
    return-void
.end method

.method private setUp(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    .line 76
    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mHexColorInput:Landroid/widget/EditText;

    .line 77
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mNewColor:Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;

    .line 79
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    invoke-virtual {v1, p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setOnColorChangedListener(Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 80
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 82
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 85
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 120
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "hexColor":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "color":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    .line 127
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setColor(I)V

    .line 128
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mNewColor:Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;

    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "color":I
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onColorChanged(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 90
    iget-object v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mColorPicker:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v1

    .line 91
    .local v1, "hasAlpha":Z
    if-eqz v1, :cond_0

    const-string v0, "%08x"

    .line 92
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    .line 94
    .local v2, "mask":I
    :goto_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mNewColor:Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;

    invoke-virtual {v3, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPanelView;->setColor(I)V

    .line 95
    iget-object v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mHexColorInput:Landroid/widget/EditText;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void

    .line 91
    .end local v0    # "format":Ljava/lang/String;
    .end local v2    # "mask":I
    :cond_0
    const-string v0, "%06x"

    goto :goto_0

    .line 92
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    const v2, 0xffffff

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 145
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 116
    return-void
.end method
