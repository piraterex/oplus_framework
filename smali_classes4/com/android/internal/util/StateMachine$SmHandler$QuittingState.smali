.class Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;
.super Lcom/android/internal/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/StateMachine$SmHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;->this$0:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$QuittingState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 784
    const/4 v0, 0x0

    return v0
.end method
