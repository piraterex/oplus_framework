.class Lcom/android/internal/app/AppPredictionServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "AppPredictionServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "APSResolverComparator"


# instance fields
.field private final blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

.field private final blacklist mTargetRanks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetScores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/prediction/AppPredictor;Landroid/os/UserHandle;Lcom/android/internal/app/ChooserActivityLogger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "appPredictor"    # Landroid/app/prediction/AppPredictor;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetRanks:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetScores:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mIntent:Landroid/content/Intent;

    .line 75
    iput-object p4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 76
    iput-object p5, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    .line 77
    iput-object p3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p6}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 79
    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    .line 80
    return-void
.end method

.method private blacklist buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;
    .locals 5

    .line 203
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    iget-object v3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetRanks:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;-><init>(Landroid/app/prediction/AppPredictor;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/os/UserHandle;Ljava/util/Map;)V

    return-object v0
.end method

.method private blacklist checkAppTargetRankValid(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)Z"
        }
    .end annotation

    .line 160
    .local p1, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    .line 161
    .local v1, "target":Landroid/app/prediction/AppTarget;
    invoke-virtual {v1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    .end local v1    # "target":Landroid/app/prediction/AppTarget;
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist handleResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleSortedAppTargets(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->afterCompute()V

    .line 141
    :cond_0
    return-void
.end method

.method private blacklist handleSortedAppTargets(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->checkAppTargetRankValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 149
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 150
    new-instance v1, Landroid/content/ComponentName;

    .line 151
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTarget;

    invoke-virtual {v3}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetRanks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSortedAppTargets, sortedAppTargets #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APSResolverComparator"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    .line 157
    return-void
.end method


# virtual methods
.method blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    invoke-virtual {v0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist destroy()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->destroy()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 183
    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    .line 185
    :cond_0
    return-void
.end method

.method blacklist doCompute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "appTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 95
    .local v2, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v3, Landroid/app/prediction/AppTarget$Builder;

    new-instance v4, Landroid/app/prediction/AppTargetId;

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 97
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 98
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mUser:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5, v6}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v4, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 100
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v3

    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/prediction/AppPredictor;->sortTargets(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 122
    return-void
.end method

.method blacklist getScore(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method blacklist handleResultMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 129
    .local v0, "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleSortedAppTargets(Ljava/util/List;)V

    .end local v0    # "sortedAppTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    if-nez v0, :cond_1

    .line 131
    const-string v0, "APSResolverComparator"

    const-string v1, "Unexpected null result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    nop

    .line 133
    :goto_1
    return-void
.end method

.method synthetic blacklist lambda$doCompute$0$com-android-internal-app-AppPredictionServiceResolverComparator()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method synthetic blacklist lambda$doCompute$1$com-android-internal-app-AppPredictionServiceResolverComparator(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "targets"    # Ljava/util/List;
    .param p2, "sortedAppTargets"    # Ljava/util/List;

    .line 105
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "APSResolverComparator"

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "AppPredictionService disabled. Using resolver."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    iget-object v3, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    new-instance v6, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;)V

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    .line 113
    invoke-direct {p0}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    .line 114
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mResolverRankerService:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->compute(Ljava/util/List;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "AppPredictionService response received"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p2}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->handleResult(Ljava/util/List;)V

    .line 120
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$handleSortedAppTargets$2$com-android-internal-app-AppPredictionServiceResolverComparator(Landroid/app/prediction/AppTarget;)V
    .locals 4
    .param p1, "target"    # Landroid/app/prediction/AppTarget;

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mTargetScores:Ljava/util/Map;

    new-instance v1, Landroid/content/ComponentName;

    .line 146
    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method blacklist updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->notifyOnTargetSelected(Landroid/content/ComponentName;)V

    .line 176
    return-void
.end method
