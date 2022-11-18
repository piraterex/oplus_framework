.class public abstract Lcom/android/internal/app/AbstractResolverComparator;
.super Ljava/lang/Object;
.source "AbstractResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;,
        Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field static final blacklist RANKER_RESULT_TIMEOUT:I = 0x1

.field static final blacklist RANKER_SERVICE_RESULT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AbstractResolverComp"

.field private static final blacklist WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field protected blacklist mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

.field protected blacklist mAnnotations:[Ljava/lang/String;

.field private final blacklist mAzComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field protected blacklist mContentType:Ljava/lang/String;

.field protected final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHttp:Z

.field protected final blacklist mPm:Landroid/content/pm/PackageManager;

.field protected final blacklist mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/internal/app/AbstractResolverComparator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/AbstractResolverComparator$1;-><init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHttp:Z

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mContentType:Ljava/lang/String;

    .line 105
    invoke-direct {p0, p2}, Lcom/android/internal/app/AbstractResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 108
    new-instance v1, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;-><init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAzComparator:Ljava/util/Comparator;

    .line 109
    return-void
.end method

.method private blacklist getContentAnnotations(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 114
    :try_start_0
    const-string v0, "android.intent.extra.CONTENT_ANNOTATIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "annotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    .local v1, "size":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 119
    const/4 v1, 0x3

    .line 121
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "annotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/BadParcelableException;
    const-string v1, "AbstractResolverComp"

    const-string v2, "Couldn\'t unparcel intent annotations. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 130
    .end local v0    # "e":Landroid/os/BadParcelableException;
    :goto_1
    return-void
.end method


# virtual methods
.method protected final blacklist afterCompute()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 154
    .local v0, "afterCompute":Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;->afterCompute()V

    .line 157
    :cond_0
    return-void
.end method

.method blacklist beforeCompute()V
    .locals 4

    .line 256
    const-string v0, "AbstractResolverComp"

    const-string v1, "Setting watchdog timer for 500ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 258
    const-string v1, "Error: Handler is Null; Needs to be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method

.method abstract blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
.end method

.method public final blacklist compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 9
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 162
    .local v1, "lhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 164
    .local v2, "rhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isFixedAtTop()Z

    move-result v3

    .line 165
    .local v3, "lFixedAtTop":Z
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isFixedAtTop()Z

    move-result v4

    .line 166
    .local v4, "rFixedAtTop":Z
    const/4 v5, -0x1

    if-eqz v3, :cond_0

    if-nez v4, :cond_0

    return v5

    .line 167
    :cond_0
    const/4 v6, 0x1

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    return v6

    .line 170
    :cond_1
    iget v7, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_3

    .line 171
    iget v5, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v5, v8, :cond_2

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    return v0

    .line 173
    :cond_3
    iget v7, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v7, v8, :cond_4

    .line 174
    return v5

    .line 177
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHttp:Z

    if-eqz v7, :cond_6

    .line 178
    iget v7, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v7

    .line 179
    .local v7, "lhsSpecific":Z
    iget v8, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v8

    .line 180
    .local v8, "rhsSpecific":Z
    if-eq v7, v8, :cond_6

    .line 181
    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    return v5

    .line 185
    .end local v7    # "lhsSpecific":Z
    .end local v8    # "rhsSpecific":Z
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v7

    .line 186
    .local v7, "lPinned":Z
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v8

    .line 189
    .local v8, "rPinned":Z
    if-eqz v7, :cond_7

    if-nez v8, :cond_7

    .line 190
    return v5

    .line 191
    :cond_7
    if-nez v7, :cond_8

    if-eqz v8, :cond_8

    .line 192
    return v6

    .line 193
    :cond_8
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 195
    iget-object v5, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAzComparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 198
    :cond_9
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method

.method final blacklist compute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->doCompute(Ljava/util/List;)V

    .line 220
    return-void
.end method

.method blacklist destroy()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 274
    return-void
.end method

.method abstract blacklist doCompute(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method blacklist getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method abstract blacklist getScore(Landroid/content/ComponentName;)F
.end method

.method abstract blacklist handleResultMessage(Landroid/os/Message;)V
.end method

.method blacklist setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V
    .locals 0
    .param p1, "afterCompute"    # Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 141
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 142
    return-void
.end method

.method blacklist setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V
    .locals 0
    .param p1, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;

    .line 145
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 146
    return-void
.end method

.method final blacklist updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/internal/app/AbstractResolverComparator;->mContentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method blacklist updateModel(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 252
    return-void
.end method
