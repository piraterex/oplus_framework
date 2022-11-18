.class Landroid/view/RemoteAccessibilityController;
.super Ljava/lang/Object;
.source "RemoteAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RemoteAccessibilityController"


# instance fields
.field private blacklist mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

.field private blacklist mHostId:I

.field private blacklist mHostView:Landroid/view/View;

.field private final blacklist mMatrixValues:[F

.field private blacklist mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    .locals 0

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/RemoteAccessibilityController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    .line 36
    iput-object p1, p0, Landroid/view/RemoteAccessibilityController;->mHostView:Landroid/view/View;

    .line 37
    return-void
.end method

.method private blacklist getRemoteAccessibilityEmbeddedConnection()Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method private blacklist runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 40
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 41
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 46
    :goto_0
    return-void
.end method

.method private blacklist setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .param p2, "leashToken"    # Landroid/os/IBinder;

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->disassociateEmbeddedHierarchy()V

    .line 126
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 130
    new-instance v0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;-><init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    .line 132
    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->linkToDeath()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setRemoteEmbeddedConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAccessibilityController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 66
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    invoke-static {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->-$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "hostId"    # I

    .line 50
    iput p3, p0, Landroid/view/RemoteAccessibilityController;->mHostId:I

    .line 53
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v0

    move-object p2, v0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/RemoteAccessibilityController;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in associateEmbeddedHierarchy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAccessibilityController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method blacklist connected()Z
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist disassosciateHierarchy()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/RemoteAccessibilityController;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    .line 63
    return-void
.end method

.method blacklist getLeashToken()Landroid/os/IBinder;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method blacklist setWindowMatrix(Landroid/graphics/Matrix;Z)V
    .locals 3
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "force"    # Z

    .line 145
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 150
    :cond_0
    nop

    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/view/RemoteAccessibilityController;->getRemoteAccessibilityEmbeddedConnection()Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 152
    .local v0, "wrapper":Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    if-nez v0, :cond_1

    .line 153
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 156
    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v1

    iget-object v2, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setWindowMatrix([F)V

    .line 157
    iget-object v1, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "wrapper":Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setScreenMatrix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAccessibilityController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
