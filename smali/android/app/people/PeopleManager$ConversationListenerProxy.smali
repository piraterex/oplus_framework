.class Landroid/app/people/PeopleManager$ConversationListenerProxy;
.super Landroid/app/people/IConversationListener$Stub;
.source "PeopleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/PeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/app/people/PeopleManager$ConversationListener;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/people/PeopleManager$ConversationListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/people/PeopleManager$ConversationListener;

    .line 273
    invoke-direct {p0}, Landroid/app/people/IConversationListener$Stub;-><init>()V

    .line 274
    iput-object p1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 275
    iput-object p2, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    .line 276
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onConversationUpdate$0$android-app-people-PeopleManager$ConversationListenerProxy(Landroid/app/people/ConversationChannel;)V
    .locals 1
    .param p1, "conversation"    # Landroid/app/people/ConversationChannel;

    .line 285
    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    invoke-interface {v0, p1}, Landroid/app/people/PeopleManager$ConversationListener;->onConversationUpdate(Landroid/app/people/ConversationChannel;)V

    return-void
.end method

.method public blacklist onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .locals 2
    .param p1, "conversation"    # Landroid/app/people/ConversationChannel;

    .line 280
    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance v1, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 286
    return-void

    .line 282
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/people/PeopleManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder is dead"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method
