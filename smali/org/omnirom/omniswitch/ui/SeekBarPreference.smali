.class public Lorg/omnirom/omniswitch/ui/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static interval:I

.field public static maximum:I


# instance fields
.field private bar:Landroid/widget/SeekBar;

.field private changer:Landroid/preference/Preference$OnPreferenceChangeListener;

.field currentValue:I

.field private monitorBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x64

    sput v0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->maximum:I

    .line 36
    const/4 v0, 0x5

    sput v0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->interval:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0x3c

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->currentValue:I

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->monitorBox:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->bar:Landroid/widget/SeekBar;

    .line 57
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->bar:Landroid/widget/SeekBar;

    iget v2, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->currentValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 58
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->currentValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 61
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 85
    int-to-float v0, p2

    sget v1, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->interval:I

    mul-int p2, v0, v1

    .line 86
    iput p2, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->currentValue:I

    .line 87
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 92
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->currentValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public setInitValue(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 65
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->currentValue:I

    .line 66
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    return-void
.end method
