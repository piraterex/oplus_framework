.class final Landroid/os/Handler$MessengerImpl;
.super Landroid/os/IMessenger$Stub;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessengerImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Landroid/os/Handler;)V
    .locals 0

    .line 920
    iput-object p1, p0, Landroid/os/Handler$MessengerImpl;->this$0:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Handler;Landroid/os/Handler$MessengerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o send(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->sendingUid:I

    .line 923
    iget-object v0, p0, Landroid/os/Handler$MessengerImpl;->this$0:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 924
    return-void
.end method
