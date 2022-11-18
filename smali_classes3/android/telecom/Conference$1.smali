.class Landroid/telecom/Conference$1;
.super Landroid/telecom/Connection$Listener;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Conference;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/Conference;

    .line 119
    iput-object p1, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;

    .line 122
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-static {v0}, Landroid/telecom/Conference;->-$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-virtual {v0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 125
    :cond_0
    return-void
.end method
