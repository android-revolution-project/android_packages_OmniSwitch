.class public Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;
.super Landroid/preference/DialogPreference;
.source "DragHandleColorPreference.java"


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "drag_handle_color"

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I

    .line 53
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    .prologue
    .line 38
    iget v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I

    return v0
.end method

.method static synthetic access$002(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I

    return p1
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->updatePreferenceViews()V

    return-void
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 130
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 131
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->setLayoutResource(I)V

    .line 58
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mResources:Landroid/content/res/Resources;

    .line 59
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 4

    .prologue
    .line 70
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 72
    .local v1, "width":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 75
    .local v0, "height":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mLightColorView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 77
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mLightColorView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I

    invoke-static {v1, v0, v3}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I

    invoke-direct {v0, v1, v2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 87
    .local v0, "d":Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;
    const/4 v1, -0x1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$1;

    invoke-direct {v3, p0, v0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$1;-><init>(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    const/4 v1, -0x3

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;

    invoke-direct {v3, p0, v0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;-><init>(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    const/4 v2, -0x2

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 115
    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 65
    const v0, 0x7f08001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 66
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->updatePreferenceViews()V

    .line 67
    return-void
.end method
