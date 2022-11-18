.class Landroid/app/AppOpsManager$2;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;

    .line 8117
    iput-object p1, p0, Landroid/app/AppOpsManager$2;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 8119
    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v1, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v1, :cond_0

    .line 8120
    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    .line 8124
    :cond_0
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetAPP_OPS_MANAGER_EXT()Landroid/app/IAppOpsManagerExt;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-interface {v0, v1, p1, p3}, Landroid/app/IAppOpsManagerExt;->onCustomOpChanged(Landroid/app/AppOpsManager$OnOpChangedListener;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8125
    return-void

    .line 8128
    :cond_1
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 8129
    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p3}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 8131
    :cond_2
    return-void
.end method
