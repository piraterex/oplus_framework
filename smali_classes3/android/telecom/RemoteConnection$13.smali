.class Landroid/telecom/RemoteConnection$13;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnection;

.field final synthetic blacklist val$address:Landroid/net/Uri;

.field final synthetic blacklist val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic blacklist val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic blacklist val$presentation:I


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnection;

    .line 1523
    iput-object p1, p0, Landroid/telecom/RemoteConnection$13;->this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, Landroid/telecom/RemoteConnection$13;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConnection$13;->val$connection:Landroid/telecom/RemoteConnection;

    iput-object p4, p0, Landroid/telecom/RemoteConnection$13;->val$address:Landroid/net/Uri;

    iput p5, p0, Landroid/telecom/RemoteConnection$13;->val$presentation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 1526
    iget-object v0, p0, Landroid/telecom/RemoteConnection$13;->val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$13;->val$connection:Landroid/telecom/RemoteConnection;

    iget-object v2, p0, Landroid/telecom/RemoteConnection$13;->val$address:Landroid/net/Uri;

    iget v3, p0, Landroid/telecom/RemoteConnection$13;->val$presentation:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/RemoteConnection$Callback;->onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    .line 1527
    return-void
.end method
