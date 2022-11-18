.class final Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session2TokensChangedWrapper"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

.field private final blacklist mStub:Landroid/media/session/ISession2TokensListener$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    new-instance v0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper$1;-><init>(Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mStub:Landroid/media/session/ISession2TokensListener$Stub;

    .line 1316
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnSession2TokensChangedListener;

    .line 1317
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1318
    return-void
.end method


# virtual methods
.method public blacklist getStub()Landroid/media/session/ISession2TokensListener$Stub;
    .locals 1

    .line 1321
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$Session2TokensChangedWrapper;->mStub:Landroid/media/session/ISession2TokensListener$Stub;

    return-object v0
.end method
