.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final greylist-max-o EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final greylist-max-o EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"

.field private static final blacklist PENDING_EXIT_SHARED_ELEMENTS:Ljava/lang/String; = "android:pendingExitSharedElements"


# instance fields
.field private greylist-max-o mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private greylist-max-o mEnterActivityOptions:Landroid/app/ActivityOptions;

.field private greylist-max-o mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private greylist-max-o mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitTransitionCoordinatorsKey:I

.field private greylist-max-o mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasExited:Z

.field private greylist-max-o mIsEnterPostponed:Z

.field private greylist-max-o mIsEnterTriggered:Z

.field private blacklist mPendingExitNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreExitedViews(Landroid/app/ActivityTransitionState;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreReenteringViews(Landroid/app/ActivityTransitionState;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 111
    return-void
.end method

.method private blacklist getPendingExitNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getPendingExitSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method private greylist-max-o restoreExitedViews()V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 302
    :cond_0
    return-void
.end method

.method private greylist-max-o restoreReenteringViews()V
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 306
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 310
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 312
    :cond_0
    return-void
.end method

.method private greylist-max-o startEnter()V
    .locals 5

    .line 232
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 234
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 241
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 244
    :goto_0
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 245
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 246
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 247
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    .line 248
    return-void
.end method


# virtual methods
.method public greylist-max-o addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .locals 4
    .param p1, "exitTransitionCoordinator"    # Landroid/app/ExitTransitionCoordinator;

    .line 114
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 119
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 120
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 121
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 122
    .local v2, "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 119
    .end local v2    # "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    .line 127
    .local v1, "newKey":I
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 128
    return v1
.end method

.method public greylist-max-o clear()V
    .locals 1

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 288
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 289
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 290
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 291
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 292
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 293
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    .line 294
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    .line 295
    return-void
.end method

.method public greylist-max-o enterReady(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .line 193
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    .line 198
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    .local v0, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v8

    .line 200
    .local v8, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    move-result v9

    .line 201
    .local v9, "isReturning":Z
    if-eqz v9, :cond_1

    .line 202
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_1
    new-instance v1, Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    .line 206
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    move-result v6

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    .line 207
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isCrossTask()Z

    move-result v7

    move-object v2, v1

    move-object v3, p1

    move-object v4, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 208
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isCrossTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 213
    :cond_2
    iget-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-nez v1, :cond_3

    .line 214
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    .line 216
    :cond_3
    return-void

    .line 194
    .end local v0    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v9    # "isReturning":Z
    :cond_4
    :goto_0
    return-void
.end method

.method public greylist-max-o isTransitionRunning()Z
    .locals 2

    .line 358
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    return v1

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    return v1

    .line 368
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    return v1

    .line 373
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$startExitBackTransition$0$android-app-ActivityTransitionState(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 344
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    .line 347
    :cond_0
    return-void
.end method

.method public blacklist onResume(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 265
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityTransitionState$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 267
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    .line 284
    :goto_1
    return-void
.end method

.method public blacklist onStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 251
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 252
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    .line 254
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->stop(Landroid/app/Activity;)V

    .line 258
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 260
    :cond_1
    return-void
.end method

.method public greylist-max-o postponeEnterTransition()V
    .locals 1

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    .line 220
    return-void
.end method

.method public greylist-max-o readState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 132
    if-eqz p1, :cond_2

    .line 133
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const-string v0, "android:pendingExitSharedElements"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mPendingExitNames:Ljava/util/ArrayList;

    .line 136
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_2

    .line 137
    const-string v0, "android:exitingMappedFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 138
    const-string v0, "android:exitingMappedTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 141
    :cond_2
    return-void
.end method

.method public greylist-max-o saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 155
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    .local v0, "pendingExitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 157
    const-string v1, "android:pendingExitSharedElements"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 160
    const-string v2, "android:exitingMappedFrom"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    const-string v2, "android:exitingMappedTo"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    :cond_1
    return-void
.end method

.method public greylist-max-o setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 167
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 172
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 176
    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    .line 178
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->isReturning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    .line 180
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getResultCode()I

    move-result v1

    .line 181
    .local v1, "result":I
    if-eqz v1, :cond_2

    .line 182
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultData()Landroid/content/Intent;

    move-result-object v2

    .line 183
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 186
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    .line 190
    .end local v1    # "result":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public greylist-max-o startExitBackTransition(Landroid/app/Activity;)Z
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .line 315
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->getPendingExitNames()Ljava/util/ArrayList;

    move-result-object v8

    .line 316
    .local v8, "pendingExitNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_6

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 319
    :cond_0
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v9, 0x1

    if-nez v0, :cond_5

    .line 320
    iput-boolean v9, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "enterViewsTransition":Landroid/transition/Transition;
    const/4 v1, 0x0

    .line 323
    .local v1, "decor":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 324
    .local v2, "delayExitBack":Z
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v3, :cond_2

    .line 325
    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 326
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 327
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    move-result v2

    .line 328
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 329
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0, v1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 334
    :cond_1
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    goto :goto_0

    .line 324
    :cond_2
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    .line 334
    .end local v0    # "enterViewsTransition":Landroid/transition/Transition;
    .end local v1    # "decor":Landroid/view/ViewGroup;
    .end local v2    # "delayExitBack":Z
    .local v10, "enterViewsTransition":Landroid/transition/Transition;
    .local v11, "decor":Landroid/view/ViewGroup;
    .local v12, "delayExitBack":Z
    :goto_0
    new-instance v13, Landroid/app/ExitTransitionCoordinator;

    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p1}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    .line 336
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v13

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v13, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 338
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 339
    invoke-virtual {v10, v11}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 341
    :cond_3
    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    .line 342
    move-object v0, v11

    .line 343
    .local v0, "finalDecor":Landroid/view/ViewGroup;
    new-instance v1, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionState$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    invoke-static {v11, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 348
    .end local v0    # "finalDecor":Landroid/view/ViewGroup;
    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0, p1}, Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V

    .line 352
    .end local v10    # "enterViewsTransition":Landroid/transition/Transition;
    .end local v11    # "decor":Landroid/view/ViewGroup;
    .end local v12    # "delayExitBack":Z
    :cond_5
    :goto_1
    return v9

    .line 317
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    .line 378
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 383
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getExitCoordinatorKey()I

    move-result v1

    .line 385
    .local v1, "key":I
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 386
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 387
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ExitTransitionCoordinator;

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    .line 388
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 389
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v3, :cond_1

    .line 390
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    .line 391
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    .line 392
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    .line 393
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    .line 397
    .end local v1    # "key":I
    .end local v2    # "index":I
    :cond_1
    return-void

    .line 380
    .end local v0    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o startPostponedEnterTransition()V
    .locals 1

    .line 223
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    .line 225
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    .line 229
    :cond_0
    return-void
.end method
