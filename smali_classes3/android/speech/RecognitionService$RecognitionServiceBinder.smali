.class final Landroid/speech/RecognitionService$RecognitionServiceBinder;
.super Landroid/speech/IRecognitionService$Stub;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecognitionServiceBinder"
.end annotation


# instance fields
.field private final greylist-max-o mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/speech/RecognitionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/speech/RecognitionService;)V
    .locals 1
    .param p1, "service"    # Landroid/speech/RecognitionService;

    .line 528
    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    .line 529
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 530
    return-void
.end method


# virtual methods
.method public blacklist cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;
    .param p2, "isShutdown"    # Z

    .line 559
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 560
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    .line 561
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    .line 562
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 561
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    :cond_0
    return-void
.end method

.method public blacklist checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    .locals 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/speech/IRecognitionSupportCallback;

    .line 569
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 570
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    .line 571
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    .line 573
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 572
    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 571
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    :cond_0
    return-void
.end method

.method public greylist-max-o clearReference()V
    .locals 1

    .line 588
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 589
    return-void
.end method

.method public blacklist startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 535
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p3}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 538
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 539
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    .line 540
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Landroid/speech/RecognitionService$StartListeningArgs;

    .line 541
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v0, p1, p2, p3}, Landroid/speech/RecognitionService$StartListeningArgs;-><init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    .line 540
    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    :cond_0
    return-void
.end method

.method public greylist-max-o stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 549
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 550
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    .line 551
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    .line 552
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 551
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    :cond_0
    return-void
.end method

.method public blacklist triggerModelDownload(Landroid/content/Intent;)V
    .locals 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 579
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 580
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_0

    .line 581
    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Landroid/speech/RecognitionService;->-$$Nest$fgetmHandler(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    .line 582
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 581
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 585
    :cond_0
    return-void
.end method
