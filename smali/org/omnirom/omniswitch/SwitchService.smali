.class public Lorg/omnirom/omniswitch/SwitchService;
.super Landroid/app/Service;
.source "SwitchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static mIsRunning:Z


# instance fields
.field private mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

.field private mManager:Lorg/omnirom/omniswitch/SwitchManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mReceiver:Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lorg/omnirom/omniswitch/SwitchService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mUserId:I

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SwitchService;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/omnirom/omniswitch/SwitchService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SwitchService;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/SwitchService;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/SwitchService;

    .prologue
    .line 37
    iget v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mUserId:I

    return v0
.end method

.method private createErrorNotification()V
    .locals 4

    .prologue
    .line 199
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/SwitchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 200
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "OmniSwitch restricted mode"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "Failed to gain system permissions"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 205
    .local v1, "notifyDetails":Landroid/app/Notification;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 206
    return-void
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lorg/omnirom/omniswitch/SwitchService;->mIsRunning:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    sget-boolean v0, Lorg/omnirom/omniswitch/SwitchService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->updateLayout()V

    .line 196
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    invoke-static {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    .line 61
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Lorg/omnirom/omniswitch/SwitchService;->createErrorNotification()V

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mUserId:I

    .line 65
    const-string v1, "SwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "started SwitchService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/omnirom/omniswitch/SwitchService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Lorg/omnirom/omniswitch/SwitchManager;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/SwitchManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;

    .line 69
    new-instance v1, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;-><init>(Lorg/omnirom/omniswitch/SwitchService;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mReceiver:Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.omnirom.omniswitch.ACTION_SHOW_OVERLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "org.omnirom.omniswitch.ACTION_HIDE_OVERLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "org.omnirom.omniswitch.ACTION_HANDLE_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "org.omnirom.omniswitch.ACTION_HANDLE_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "org.omnirom.omniswitch.ACTION_TOGGLE_OVERLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mReceiver:Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/omnirom/omniswitch/SwitchService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    invoke-static {p0}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/omnirom/omniswitch/PackageManager;->updatePackageList(ZLjava/lang/String;)V

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefs:Landroid/content/SharedPreferences;

    .line 83
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v1, v4}, Lorg/omnirom/omniswitch/SwitchService;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lorg/omnirom/omniswitch/SwitchService$1;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/SwitchService$1;-><init>(Lorg/omnirom/omniswitch/SwitchService;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 92
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    const/4 v1, 0x1

    sput-boolean v1, Lorg/omnirom/omniswitch/SwitchService;->mIsRunning:Z

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    const-string v0, "SwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopped SwitchService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mReceiver:Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/SwitchService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->killManager()V

    .line 104
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchService;->mPrefsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 105
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->shutdownService()V

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lorg/omnirom/omniswitch/SwitchService;->mIsRunning:Z

    .line 108
    invoke-static {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->clear()V

    .line 109
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/SwitchManager;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 188
    return-void
.end method
