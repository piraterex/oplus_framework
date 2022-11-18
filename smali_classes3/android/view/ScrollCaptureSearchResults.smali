.class public final Landroid/view/ScrollCaptureSearchResults;
.super Ljava/lang/Object;
.source "ScrollCaptureSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureSearchResults$SearchRequest;
    }
.end annotation


# static fields
.field private static final blacklist AFTER:I = 0x1

.field private static final blacklist BEFORE:I = -0x1

.field private static final blacklist EQUAL:I

.field static final blacklist PRIORITY_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCancel:Landroid/os/CancellationSignal;

.field private blacklist mComplete:Z

.field private blacklist mCompleted:I

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnCompleteListener:Ljava/lang/Runnable;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCancel(Landroid/view/ScrollCaptureSearchResults;)Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompleted(Landroid/view/ScrollCaptureSearchResults;)I
    .locals 0

    iget p0, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargets(Landroid/view/ScrollCaptureSearchResults;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompleted(Landroid/view/ScrollCaptureSearchResults;I)V
    .locals 0

    iput p1, p0, Landroid/view/ScrollCaptureSearchResults;->mCompleted:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msignalComplete(Landroid/view/ScrollCaptureSearchResults;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    .line 51
    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    .line 54
    return-void
.end method

.method private static blacklist area(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static blacklist hasIncludeHint(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getScrollCaptureHint()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "otherView"    # Landroid/view/View;

    .line 241
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 242
    return v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 245
    .local v1, "otherParent":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 248
    :cond_1
    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)I
    .locals 10
    .param p0, "a"    # Landroid/view/ScrollCaptureTarget;
    .param p1, "b"    # Landroid/view/ScrollCaptureTarget;

    .line 176
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 177
    return v0

    .line 178
    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p0, :cond_b

    if-nez p1, :cond_1

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v3

    .line 183
    .local v3, "emptyScrollBoundsA":Z
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v4

    .line 184
    .local v4, "emptyScrollBoundsB":Z
    if-nez v3, :cond_8

    if-eqz v4, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "viewA":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v5

    .line 200
    .local v5, "viewB":Landroid/view/View;
    invoke-static {v0}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v6

    .line 201
    .local v6, "hintIncludeA":Z
    invoke-static {v5}, Landroid/view/ScrollCaptureSearchResults;->hasIncludeHint(Landroid/view/View;)Z

    move-result v7

    .line 202
    .local v7, "hintIncludeB":Z
    if-eq v6, v7, :cond_4

    .line 203
    if-eqz v6, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 208
    :cond_4
    invoke-static {v0, v5}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 209
    return v2

    .line 211
    :cond_5
    invoke-static {v5, v0}, Landroid/view/ScrollCaptureSearchResults;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 212
    return v1

    .line 216
    :cond_6
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result v8

    .line 217
    .local v8, "scrollAreaA":I
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ScrollCaptureSearchResults;->area(Landroid/graphics/Rect;)I

    move-result v9

    .line 218
    .local v9, "scrollAreaB":I
    if-lt v8, v9, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 185
    .end local v0    # "viewA":Landroid/view/View;
    .end local v5    # "viewB":Landroid/view/View;
    .end local v6    # "hintIncludeA":Z
    .end local v7    # "hintIncludeB":Z
    .end local v8    # "scrollAreaA":I
    .end local v9    # "scrollAreaB":I
    :cond_8
    :goto_0
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 186
    return v0

    .line 189
    :cond_9
    if-eqz v3, :cond_a

    .line 190
    return v1

    .line 192
    :cond_a
    return v2

    .line 179
    .end local v3    # "emptyScrollBoundsA":Z
    .end local v4    # "emptyScrollBoundsB":Z
    :cond_b
    :goto_1
    if-nez p0, :cond_c

    goto :goto_2

    :cond_c
    move v1, v2

    :goto_2
    return v1
.end method

.method private static blacklist nullOrEmpty(Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 226
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist signalComplete()V
    .locals 2

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    .line 116
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/view/ScrollCaptureSearchResults;->PRIORITY_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 117
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addTarget(Landroid/view/ScrollCaptureTarget;)V
    .locals 4
    .param p1, "target"    # Landroid/view/ScrollCaptureTarget;

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    .line 68
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    .line 69
    .local v0, "callback":Landroid/view/ScrollCaptureCallback;
    new-instance v1, Landroid/view/ScrollCaptureSearchResults$SearchRequest;

    invoke-direct {v1, p0, p1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V

    .line 72
    .local v1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Landroid/view/ScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;

    .line 252
    const-string/jumbo v0, "results:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v0, "targets:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 258
    invoke-virtual {p0}, Landroid/view/ScrollCaptureSearchResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "None"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 264
    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v1, p1}, Landroid/view/ScrollCaptureTarget;->dump(Ljava/io/PrintWriter;)V

    .line 265
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 269
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 270
    return-void
.end method

.method public blacklist finish()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 110
    invoke-direct {p0}, Landroid/view/ScrollCaptureSearchResults;->signalComplete()V

    .line 112
    :cond_0
    return-void
.end method

.method public blacklist getTargets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getTopResult()Landroid/view/ScrollCaptureTarget;
    .locals 3

    .line 134
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ScrollCaptureTarget;

    .line 135
    .local v0, "target":Landroid/view/ScrollCaptureTarget;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public blacklist isComplete()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$addTarget$0$android-view-ScrollCaptureSearchResults(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;
    .param p2, "consumer"    # Ljava/util/function/Consumer;

    .line 73
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-interface {p1, v0, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist setOnCompleteListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .line 87
    iget-boolean v0, p0, Landroid/view/ScrollCaptureSearchResults;->mComplete:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 90
    :cond_0
    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    .line 92
    :goto_0
    return-void
.end method
