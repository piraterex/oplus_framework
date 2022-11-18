.class public final Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickOptionRequest"
.end annotation


# instance fields
.field final greylist-max-o mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final greylist-max-o mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p6, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p7, "extras"    # Landroid/os/Bundle;

    .line 563
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    .line 564
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 565
    iput-object p6, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 566
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 635
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 636
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    if-eqz v0, :cond_2

    .line 639
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Options:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 641
    aget-object v1, v1, v0

    .line 642
    .local v1, "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mLabel="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mIndex="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 647
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v2

    if-lez v2, :cond_0

    .line 648
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Synonyms:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->countSynonyms()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 650
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "      #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 651
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getSynonymAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 654
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mExtras="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 640
    .end local v1    # "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist getOptions()[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 1

    .line 593
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    return-object v0
.end method

.method public whitelist getPrompt()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor$Prompt;->getVoicePromptAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getVoicePrompt()Landroid/app/VoiceInteractor$Prompt;
    .locals 1

    .line 574
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    return-object v0
.end method

.method public whitelist sendIntermediatePickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 620
    return-void
.end method

.method greylist-max-o sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 602
    if-eqz p1, :cond_0

    .line 603
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->finishRequest()V

    .line 605
    :cond_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 608
    :goto_0
    return-void
.end method

.method public whitelist sendPickOptionResult([Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;->sendPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 632
    return-void
.end method
