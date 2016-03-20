.class Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;
.super Ljava/lang/Object;
.source "DragHandleColorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

.field final synthetic val$d:Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->val$d:Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    # setter for: Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->access$002(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;I)I

    .line 105
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    # invokes: Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->updatePreferenceViews()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->access$100(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;)V

    .line 106
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    # getter for: Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->access$200(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drag_handle_color"

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->this$0:Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;

    # getter for: Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->mColorValue:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;->access$000(Lorg/omnirom/omniswitch/ui/DragHandleColorPreference;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/DragHandleColorPreference$2;->val$d:Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerDialog;->dismiss()V

    .line 110
    return-void
.end method
