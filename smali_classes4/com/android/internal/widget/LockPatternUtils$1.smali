.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 937
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "userHandle"    # Ljava/lang/Integer;

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->getCredentialType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "failed to get credential type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 937
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->apply(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist shouldBypassCache(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "userHandle"    # Ljava/lang/Integer;

    .line 949
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x270f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .locals 0

    .line 937
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->shouldBypassCache(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
