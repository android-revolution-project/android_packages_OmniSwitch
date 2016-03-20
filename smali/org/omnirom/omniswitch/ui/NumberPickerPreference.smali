.class public Lorg/omnirom/omniswitch/ui/NumberPickerPreference;
.super Landroid/preference/DialogPreference;
.source "NumberPickerPreference.java"


# instance fields
.field private mMaxValue:I

.field private mMinValue:I

.field private mNumberPicker:Landroid/widget/NumberPicker;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setMinValue(I)V

    .line 41
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setMaxValue(I)V

    .line 44
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setDialogLayoutResource(I)V

    .line 45
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setPositiveButtonText(I)V

    .line 46
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setNegativeButtonText(I)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 64
    const v0, 0x7f080020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 65
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mNumberPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMinValue:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 66
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mNumberPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMaxValue:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mNumberPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 68
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 109
    .local v0, "numberPickerValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setValue(I)V

    .line 113
    .end local v0    # "numberPickerValue":I
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setValue(I)V

    .line 53
    return-void

    .line 52
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMaxValue:I

    .line 85
    iget v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mValue:I

    iget v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMaxValue:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setValue(I)V

    .line 86
    return-void
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMinValue:I

    .line 76
    iget v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mValue:I

    iget v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMinValue:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setValue(I)V

    .line 77
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 93
    iget v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mMinValue:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 95
    iget v0, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mValue:I

    if-eq p1, v0, :cond_0

    .line 96
    iput p1, p0, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->mValue:I

    .line 97
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->persistInt(I)Z

    .line 98
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->notifyChanged()V

    .line 100
    :cond_0
    return-void
.end method
