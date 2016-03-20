.class Lorg/omnirom/omniswitch/ui/SwitchLayout$23;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 989
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v9

    iget-boolean v9, v9, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowRambar:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRamUsageBar:Lorg/omnirom/omniswitch/ui/LinearColorBar;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/LinearColorBar;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 994
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 995
    .local v5, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 997
    iget-wide v1, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 998
    .local v1, "availMem":J
    iget-wide v7, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1000
    .local v7, "totalMem":J
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v9

    sub-long v10, v7, v1

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1002
    .local v6, "sizeStr":Ljava/lang/String;
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mForegroundProcessText:Landroid/widget/TextView;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090018

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1005
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackgroundProcessText:Landroid/widget/TextView;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2600(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090017

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    long-to-float v4, v7

    .line 1009
    .local v4, "fTotalMem":F
    long-to-float v3, v1

    .line 1010
    .local v3, "fAvailMem":F
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRamUsageBar:Lorg/omnirom/omniswitch/ui/LinearColorBar;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/LinearColorBar;

    move-result-object v9

    sub-float v10, v4, v3

    div-float/2addr v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->setRatios(FFF)V

    goto/16 :goto_0
.end method
