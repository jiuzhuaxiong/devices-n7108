.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0
    .parameter

    .prologue
    .line 2468
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x834

    const/4 v4, 0x0

    .line 2471
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2472
    .local v0, token:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2473
    .local v1, winType:I
    if-eq v1, v3, :cond_0

    const/16 v2, 0x836

    if-ne v1, v2, :cond_1

    .line 2475
    :cond_0
    if-ne v1, v3, :cond_2

    .line 2476
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v2

    const/16 v3, 0x835

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2480
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2482
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v2

    const/16 v3, 0x37

    invoke-virtual {v2, v0, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 2485
    return-void

    .line 2478
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v2

    const/16 v3, 0x837

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto :goto_0
.end method
