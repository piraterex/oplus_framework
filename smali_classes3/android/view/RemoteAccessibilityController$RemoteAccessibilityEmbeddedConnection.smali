.class final Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;
.source "RemoteAccessibilityController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RemoteAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteAccessibilityEmbeddedConnection"
.end annotation


# instance fields
.field private final blacklist mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mLeashToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/view/RemoteAccessibilityController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .locals 0

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .param p3, "leashToken"    # Landroid/os/IBinder;

    .line 88
    iput-object p1, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 90
    iput-object p3, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    .line 112
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    new-instance v1, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V

    invoke-static {v0, v1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method blacklist getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method blacklist getLeashToken()Landroid/os/IBinder;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-object v0
.end method

.method synthetic blacklist lambda$binderDied$0$android-view-RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection()V
    .locals 2

    .line 113
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    invoke-static {v0}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V

    .line 116
    :cond_0
    return-void
.end method

.method blacklist linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 103
    return-void
.end method

.method blacklist unlinkToDeath()V
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 107
    return-void
.end method
