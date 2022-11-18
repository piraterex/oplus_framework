.class Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;
.super Lcom/android/internal/textservice/ISpellCheckerService$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerServiceBinder"
.end annotation


# instance fields
.field private final greylist-max-o mInternalServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/textservice/SpellCheckerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/service/textservice/SpellCheckerService;)V
    .locals 1
    .param p1, "service"    # Landroid/service/textservice/SpellCheckerService;

    .line 330
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;-><init>()V

    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    .line 332
    return-void
.end method


# virtual methods
.method public blacklist getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .locals 9
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "supportedAttributes"    # I
    .param p5, "callback"    # Lcom/android/internal/textservice/ISpellCheckerServiceCallback;

    .line 354
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/textservice/SpellCheckerService;

    .line 356
    .local v0, "service":Landroid/service/textservice/SpellCheckerService;
    if-nez v0, :cond_0

    .line 359
    const/4 v1, 0x0

    .local v1, "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    goto :goto_0

    .line 361
    .end local v1    # "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    :cond_0
    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService;->createSession()Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v1

    .line 362
    .local v1, "session":Landroid/service/textservice/SpellCheckerService$Session;
    new-instance v8, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;-><init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;I)V

    .line 364
    .local v2, "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onCreate()V

    move-object v1, v2

    .line 367
    .end local v2    # "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    .local v1, "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    :goto_0
    :try_start_0
    invoke-interface {p5, v1}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_1

    .line 368
    :catch_0
    move-exception v2

    .line 370
    :goto_1
    return-void
.end method
