.class public Landroid/app/people/IConversationListener$Default;
.super Ljava/lang/Object;
.source "IConversationListener.java"

# interfaces
.implements Landroid/app/people/IConversationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/IConversationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .locals 0
    .param p1, "conversation"    # Landroid/app/people/ConversationChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
