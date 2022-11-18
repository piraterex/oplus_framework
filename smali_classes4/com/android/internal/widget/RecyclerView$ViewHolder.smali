.class public abstract Lcom/android/internal/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final blacklist FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final blacklist FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final blacklist FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final blacklist FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final blacklist FLAG_BOUND:I = 0x1

.field static final blacklist FLAG_IGNORE:I = 0x80

.field static final blacklist FLAG_INVALID:I = 0x4

.field static final blacklist FLAG_MOVED:I = 0x800

.field static final blacklist FLAG_NOT_RECYCLABLE:I = 0x10

.field static final blacklist FLAG_REMOVED:I = 0x8

.field static final blacklist FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final blacklist FLAG_TMP_DETACHED:I = 0x100

.field static final blacklist FLAG_UPDATE:I = 0x2

.field private static final blacklist FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final blacklist itemView:Landroid/view/View;

.field private blacklist mFlags:I

.field private blacklist mInChangeScrap:Z

.field private blacklist mIsRecyclableCount:I

.field blacklist mItemId:J

.field blacklist mItemViewType:I

.field blacklist mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOldPosition:I

.field blacklist mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field blacklist mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPendingAccessibilityState:I

.field blacklist mPosition:I

.field blacklist mPreLayoutPosition:I

.field private blacklist mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

.field blacklist mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field blacklist mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field blacklist mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrapContainer(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoesTransientStatePreventRecycling(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monEnteredHiddenState(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLeftHiddenState(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Lcom/android/internal/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldBeKeptAsChild(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10138
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 10165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10032
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10033
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10034
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10035
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 10036
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10039
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10041
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10140
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10141
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10143
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10147
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 10149
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10153
    iput v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10156
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10166
    if-eqz p1, :cond_0

    .line 10169
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10170
    return-void

    .line 10167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createPayloadsIfNeeded()V
    .locals 1

    .line 10384
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10386
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10388
    :cond_0
    return-void
.end method

.method private blacklist doesTransientStatePreventRecycling()Z
    .locals 1

    .line 10525
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onEnteredHiddenState(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;

    .line 10431
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10432
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10433
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z

    .line 10435
    return-void
.end method

.method private blacklist onLeftHiddenState(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;

    .line 10441
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z

    .line 10443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10444
    return-void
.end method

.method private blacklist shouldBeKeptAsChild()Z
    .locals 1

    .line 10517
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method blacklist addChangePayload(Ljava/lang/Object;)V
    .locals 2
    .param p1, "payload"    # Ljava/lang/Object;

    .line 10375
    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 10376
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 10377
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 10378
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 10379
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10381
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 10371
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10372
    return-void
.end method

.method blacklist clearOldPosition()V
    .locals 1

    .line 10195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10196
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10197
    return-void
.end method

.method blacklist clearPayload()V
    .locals 1

    .line 10391
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 10392
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10394
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10395
    return-void
.end method

.method blacklist clearReturnedFromScrapFlag()V
    .locals 1

    .line 10322
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10323
    return-void
.end method

.method blacklist clearTmpDetachFlag()V
    .locals 1

    .line 10326
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10327
    return-void
.end method

.method blacklist flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 10173
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 10174
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 10175
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10176
    return-void
.end method

.method public final blacklist getAdapterPosition()I
    .locals 1

    .line 10271
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 10272
    const/4 v0, -0x1

    return v0

    .line 10274
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final blacklist getItemId()J
    .locals 2

    .line 10299
    iget-wide v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final blacklist getItemViewType()I
    .locals 1

    .line 10306
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final blacklist getLayoutPosition()I
    .locals 2

    .line 10245
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public final blacklist getOldPosition()I
    .locals 1

    .line 10289
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final blacklist getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10219
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method blacklist getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10398
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 10399
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10404
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 10401
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 10407
    :cond_2
    sget-object v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method blacklist hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 10355
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isAdapterPositionUnknown()Z
    .locals 1

    .line 10363
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

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

.method blacklist isBound()Z
    .locals 2

    .line 10347
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method blacklist isInvalid()Z
    .locals 1

    .line 10339
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist isRecyclable()Z
    .locals 1

    .line 10508
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10509
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10508
    :goto_0
    return v0
.end method

.method blacklist isRemoved()Z
    .locals 1

    .line 10351
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isScrap()Z
    .locals 1

    .line 10310
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isTmpDetached()Z
    .locals 1

    .line 10359
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isUpdated()Z
    .locals 1

    .line 10529
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist needsUpdate()Z
    .locals 1

    .line 10343
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .line 10179
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10180
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10182
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 10183
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10185
    :cond_1
    if-eqz p2, :cond_2

    .line 10186
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10188
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10189
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10190
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10192
    :cond_3
    return-void
.end method

.method blacklist resetInternal()V
    .locals 4

    .line 10412
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10413
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10414
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10415
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10416
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10417
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10418
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10419
    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10420
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 10421
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10422
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10423
    invoke-static {p0}, Lcom/android/internal/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 10424
    return-void
.end method

.method blacklist saveOldPosition()V
    .locals 2

    .line 10200
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10201
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10203
    :cond_0
    return-void
.end method

.method blacklist setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 10367
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10368
    return-void
.end method

.method public final blacklist setIsRecyclable(Z)V
    .locals 2
    .param p1, "recyclable"    # Z

    .line 10483
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10484
    if-gez v1, :cond_1

    .line 10485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10492
    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 10493
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 10494
    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 10495
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10500
    :cond_3
    :goto_1
    return-void
.end method

.method blacklist setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .line 10334
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 10335
    iput-boolean p2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10336
    return-void
.end method

.method blacklist shouldIgnore()Z
    .locals 1

    .line 10206
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist stopIgnoring()V
    .locals 1

    .line 10330
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10331
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 10448
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10449
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10451
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10452
    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10453
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v2, :cond_0

    const-string v2, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v2, "[attachedScrap]"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10455
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10456
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10457
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10458
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10459
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10460
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10461
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10462
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10464
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10465
    :cond_a
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist unScrap()V
    .locals 1

    .line 10314
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 10315
    return-void
.end method

.method blacklist wasReturnedFromScrap()Z
    .locals 1

    .line 10318
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
