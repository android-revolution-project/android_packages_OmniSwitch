.class public Lorg/omnirom/omniswitch/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/SettingsActivity$SpeedSwitchButtonsApplyRunnable;,
        Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;
    }
.end annotation


# static fields
.field public static BUTTON_ALLAPPS:I

.field public static BUTTON_BACK:I

.field public static BUTTON_HOME:I

.field public static BUTTON_IMMERSIVE_MODE:I

.field public static BUTTON_KILL_ALL:I

.field public static BUTTON_KILL_OTHER:I

.field public static BUTTON_SETTINGS:I

.field public static BUTTON_SPEED_SWITCH_BACK:I

.field public static BUTTON_SPEED_SWITCH_HOME:I

.field public static BUTTON_SPEED_SWITCH_IMMERSIVE_MODE:I

.field public static BUTTON_SPEED_SWITCH_KILL_ALL:I

.field public static BUTTON_SPEED_SWITCH_KILL_CURRENT:I

.field public static BUTTON_SPEED_SWITCH_KILL_OTHER:I

.field public static BUTTON_TOGGLE_APP:I

.field public static NUM_BUTTON:I

.field public static NUM_SPEED_SWITCH_BUTTON:I


# instance fields
.field private mAdjustHandle:Landroid/preference/Preference;

.field private mButtonConfig:Landroid/preference/Preference;

.field private mButtonEntries:[Ljava/lang/String;

.field private mButtonImages:[Landroid/graphics/drawable/Drawable;

.field private mButtons:Ljava/lang/String;

.field private mDragHandleOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

.field private mFavoriteAppsConfig:Landroid/preference/Preference;

.field private mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

.field private mGravity:Landroid/preference/ListPreference;

.field private mIconSize:Landroid/preference/ListPreference;

.field private mIconpack:Landroid/preference/Preference;

.field private mOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSpeedSwitchButtonConfig:Landroid/preference/Preference;

.field private mSpeedSwitchButtonEntries:[Ljava/lang/String;

.field private mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

.field private mSpeedSwitchButtons:Ljava/lang/String;

.field private mSpeedSwitchItems:Lorg/omnirom/omniswitch/ui/NumberPickerPreference;

.field private mToggleServiceSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    sput v1, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_KILL_ALL:I

    .line 86
    sput v2, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_KILL_OTHER:I

    .line 87
    sput v3, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_TOGGLE_APP:I

    .line 88
    sput v4, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_HOME:I

    .line 89
    sput v5, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SETTINGS:I

    .line 90
    const/4 v0, 0x5

    sput v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_ALLAPPS:I

    .line 91
    const/4 v0, 0x6

    sput v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_BACK:I

    .line 92
    const/4 v0, 0x7

    sput v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_IMMERSIVE_MODE:I

    .line 93
    const/16 v0, 0x8

    sput v0, Lorg/omnirom/omniswitch/SettingsActivity;->NUM_BUTTON:I

    .line 95
    sput v1, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_HOME:I

    .line 96
    sput v2, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_BACK:I

    .line 97
    sput v3, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_KILL_CURRENT:I

    .line 98
    sput v4, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_KILL_ALL:I

    .line 99
    sput v5, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_KILL_OTHER:I

    .line 100
    const/4 v0, 0x5

    sput v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_IMMERSIVE_MODE:I

    .line 101
    const/4 v0, 0x6

    sput v0, Lorg/omnirom/omniswitch/SettingsActivity;->NUM_SPEED_SWITCH_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SettingsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtons:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lorg/omnirom/omniswitch/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtons:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SettingsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SettingsActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtons:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/omnirom/omniswitch/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtons:Ljava/lang/String;

    return-object p1
.end method

.method private initButtons()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, -0x777778

    .line 274
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonEntries:[Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonEntries:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 277
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 278
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 279
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v9

    .line 280
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 281
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 282
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 283
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 285
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonEntries:[Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonEntries:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    .line 287
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 288
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 289
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 290
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v9

    .line 291
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 292
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 293
    return-void
.end method


# virtual methods
.method public applyChanges(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "favorite_apps"

    invoke-static {p1}, Lorg/omnirom/omniswitch/Utils;->flattenFavorites(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->handleRotation()V

    .line 302
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 151
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->addPreferencesFromResource(I)V

    .line 153
    const-string v1, "icon_size"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    .line 154
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "icon_size"

    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "idx":I
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 158
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    const-string v1, "opacity"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    .line 160
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "opacity"

    const/16 v4, 0x32

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->setInitValue(I)V

    .line 161
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    invoke-virtual {v1, p0}, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    const-string v1, "drag_handle_opacity"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mDragHandleOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    .line 163
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mDragHandleOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "drag_handle_opacity"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->setInitValue(I)V

    .line 164
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mDragHandleOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    invoke-virtual {v1, p0}, Lorg/omnirom/omniswitch/ui/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v1, "adjust_handle"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mAdjustHandle:Landroid/preference/Preference;

    .line 166
    const-string v1, "button_config"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonConfig:Landroid/preference/Preference;

    .line 167
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "buttons_new"

    const-string v3, "0:1,1:1,2:1,3:1,4:1,5:1,6:1,7:1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtons:Ljava/lang/String;

    .line 168
    const-string v1, "favorite_apps_config"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mFavoriteAppsConfig:Landroid/preference/Preference;

    .line 169
    const-string v1, "gravity"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    .line 170
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "gravity"

    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 173
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 174
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    const-string v1, "iconpack"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconpack:Landroid/preference/Preference;

    .line 176
    const-string v1, "speed_switch_items"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchItems:Lorg/omnirom/omniswitch/ui/NumberPickerPreference;

    .line 177
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchItems:Lorg/omnirom/omniswitch/ui/NumberPickerPreference;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setMinValue(I)V

    .line 178
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchItems:Lorg/omnirom/omniswitch/ui/NumberPickerPreference;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/NumberPickerPreference;->setMaxValue(I)V

    .line 179
    const-string v1, "speed_switch_button_config"

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonConfig:Landroid/preference/Preference;

    .line 180
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "speed_switch_button_new"

    const-string v3, "0:1,1:1,2:1,3:1,4:1,5:1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtons:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->initButtons()V

    .line 183
    new-instance v1, Lorg/omnirom/omniswitch/SettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/SettingsActivity$1;-><init>(Lorg/omnirom/omniswitch/SettingsActivity;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 190
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/omnirom/omniswitch/SettingsActivity;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 306
    const-string v1, "SettingsActivity"

    const-string v4, "onCreateOptionsMenu"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v4, 0x7f0b0003

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "start_on_boot"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 309
    .local v0, "startOnBoot":Z
    const v1, 0x7f08003b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f08000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mToggleServiceSwitch:Landroid/widget/Switch;

    .line 310
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mToggleServiceSwitch:Landroid/widget/Switch;

    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "enable"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 311
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mToggleServiceSwitch:Landroid/widget/Switch;

    new-instance v3, Lorg/omnirom/omniswitch/SettingsActivity$2;

    invoke-direct {v3, p0}, Lorg/omnirom/omniswitch/SettingsActivity$2;-><init>(Lorg/omnirom/omniswitch/SettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return v2

    :cond_0
    move v1, v3

    .line 310
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->hide()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 132
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 241
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v2, p2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "idx":I
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    iget-object v5, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconSize:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 263
    .end local v0    # "idx":I
    .end local v2    # "value":Ljava/lang/String;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v3

    .line 247
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    if-ne p1, v4, :cond_1

    .line 248
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 249
    .local v1, "val":F
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "opacity"

    float-to-int v6, v1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 251
    .end local v1    # "val":F
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mDragHandleOpacity:Lorg/omnirom/omniswitch/ui/SeekBarPreference;

    if-ne p1, v4, :cond_2

    .line 252
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 253
    .restart local v1    # "val":F
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "drag_handle_opacity"

    float-to-int v6, v1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 255
    .end local v1    # "val":F
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    move-object v2, p2

    .line 256
    check-cast v2, Ljava/lang/String;

    .line 257
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 258
    .restart local v0    # "idx":I
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    iget-object v5, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v4, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGravity:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 263
    .end local v0    # "idx":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x7f090031

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 210
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mAdjustHandle:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 211
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->hide()V

    .line 213
    iput-object v6, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .line 215
    :cond_0
    new-instance v1, Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .line 216
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mGestureView:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->show()V

    move v1, v7

    .line 236
    :goto_0
    return v1

    .line 218
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonConfig:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 219
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtons:Ljava/lang/String;

    const-string v2, "0:1,1:1,2:1,3:1,4:1,5:1,6:1,7:1"

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/Utils;->buttonStringToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 220
    .local v4, "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonEntries:[Ljava/lang/String;

    iget-object v3, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mButtonImages:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;

    invoke-direct {v5, p0, v6}, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;-><init>(Lorg/omnirom/omniswitch/SettingsActivity;Lorg/omnirom/omniswitch/SettingsActivity$1;)V

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;-><init>(Landroid/content/Context;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;Ljava/util/Map;Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;Ljava/lang/String;)V

    .line 223
    .local v0, "dialog":Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->show()V

    move v1, v7

    .line 224
    goto :goto_0

    .line 225
    .end local v0    # "dialog":Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    .end local v4    # "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_2
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonConfig:Landroid/preference/Preference;

    if-ne p2, v1, :cond_3

    .line 226
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtons:Ljava/lang/String;

    const-string v2, "0:1,1:1,2:1,3:1,4:1,5:1"

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/Utils;->buttonStringToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 227
    .restart local v4    # "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonEntries:[Ljava/lang/String;

    iget-object v3, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mSpeedSwitchButtonImages:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Lorg/omnirom/omniswitch/SettingsActivity$SpeedSwitchButtonsApplyRunnable;

    invoke-direct {v5, p0, v6}, Lorg/omnirom/omniswitch/SettingsActivity$SpeedSwitchButtonsApplyRunnable;-><init>(Lorg/omnirom/omniswitch/SettingsActivity;Lorg/omnirom/omniswitch/SettingsActivity$1;)V

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;-><init>(Landroid/content/Context;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;Ljava/util/Map;Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;Ljava/lang/String;)V

    .line 230
    .restart local v0    # "dialog":Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->show()V

    move v1, v7

    .line 231
    goto :goto_0

    .line 232
    .end local v0    # "dialog":Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    .end local v4    # "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_3
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mIconpack:Landroid/preference/Preference;

    if-ne p2, v1, :cond_4

    .line 233
    invoke-static {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->pickIconPack(Landroid/content/Context;)V

    move v1, v7

    .line 234
    goto :goto_0

    .line 236
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 138
    return-void
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method
