.class final Landroid/view/textclassifier/TextClassificationSession;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;,
        Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TextClassificationSession"


# instance fields
.field private final blacklist mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final blacklist mCleaner:Lsun/misc/Cleaner;

.field private final blacklist mDelegate:Landroid/view/textclassifier/TextClassifier;

.field private blacklist mDestroyed:Z

.field private final blacklist mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method constructor blacklist <init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V
    .locals 4
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "delegate"    # Landroid/view/textclassifier/TextClassifier;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    .line 53
    new-instance v2, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {v2}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>()V

    iput-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 54
    new-instance v3, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-direct {v3, v2, v0}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V

    iput-object v3, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    .line 55
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->initializeRemoteSession()V

    .line 57
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;

    invoke-direct {v0, v3, v1}, Landroid/view/textclassifier/TextClassificationSession$CleanerRunnable;-><init>(Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {p0, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mCleaner:Lsun/misc/Cleaner;

    .line 58
    return-void
.end method

.method private blacklist checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 155
    .local p1, "responseSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "response":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-boolean v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v2, :cond_0

    .line 159
    monitor-exit v1

    return-object v0

    .line 161
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 163
    .end local v0    # "response":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This TextClassification session has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initializeRemoteSession()V
    .locals 3

    .line 66
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    instance-of v1, v0, Landroid/view/textclassifier/SystemTextClassifier;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier;->initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 74
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda1;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassification$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public whitelist destroy()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    .line 133
    :cond_0
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextLanguage$Request;

    .line 89
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda6;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLanguage$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextLanguage;

    return-object v0
.end method

.method public whitelist generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 79
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextLinks$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public whitelist getMaxGenerateLinksTextLength()I
    .locals 2

    .line 94
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;-><init>(Landroid/view/textclassifier/TextClassifier;)V

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist isDestroyed()Z
    .locals 2

    .line 138
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$classifyText$1$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 74
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$detectLanguage$4$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextLanguage$Request;

    .line 89
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$generateLinks$2$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 79
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$onSelectionEvent$5$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/SelectionEvent;)Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextClassificationSession"

    const-string v2, "Error reporting text classifier selection event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$onTextClassifierEvent$6$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p1, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 117
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextClassificationSession"

    const-string v2, "Error reporting text classifier event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic blacklist lambda$suggestConversationActions$3$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/ConversationActions$Request;

    .line 84
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$suggestSelection$0$android-view-textclassifier-TextClassificationSession(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 62
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 99
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda4;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/SelectionEvent;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 114
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda5;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextClassifierEvent;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public whitelist suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/ConversationActions$Request;

    .line 84
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/ConversationActions$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    return-object v0
.end method

.method public whitelist suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 62
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda3;-><init>(Landroid/view/textclassifier/TextClassificationSession;Landroid/view/textclassifier/TextSelection$Request;)V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyedAndRun(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextSelection;

    return-object v0
.end method
