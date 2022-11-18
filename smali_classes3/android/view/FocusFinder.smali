.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$UserSpecifiedFocusComparator;,
        Landroid/view/FocusFinder$FocusSorter;
    }
.end annotation


# static fields
.field private static final greylist-max-o tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mBestCandidateRect:Landroid/graphics/Rect;

.field private final greylist-max-o mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

.field final greylist-max-o mFocusedRect:Landroid/graphics/Rect;

.field final greylist-max-o mOtherRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

.field private final greylist-max-o mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v1, Landroid/view/FocusFinder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/FocusFinder$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 61
    new-instance v0, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    new-instance v1, Landroid/view/FocusFinder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/FocusFinder$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;-><init>(Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    .line 64
    new-instance v0, Landroid/view/FocusFinder$FocusSorter;

    invoke-direct {v0}, Landroid/view/FocusFinder$FocusSorter;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/FocusFinder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private greylist-max-o findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 9
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "next":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Landroid/view/FocusFinder;->getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 99
    .local v7, "effectiveRoot":Landroid/view/ViewGroup;
    if-eqz p2, :cond_0

    .line 100
    invoke-direct {p0, v7, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    .line 103
    return-object v0

    .line 105
    :cond_1
    iget-object v8, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 107
    .local v8, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 108
    invoke-virtual {v7, v8, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    .line 109
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 113
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 114
    nop

    .line 115
    return-object v0

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 114
    throw v1
.end method

.method private greylist-max-o findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .locals 7
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 220
    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_1

    .line 221
    if-nez p3, :cond_0

    .line 222
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 225
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 226
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 228
    :cond_1
    if-nez p3, :cond_4

    .line 229
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 231
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 234
    :sswitch_0
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 235
    goto :goto_0

    .line 246
    :sswitch_1
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 247
    goto :goto_0

    .line 237
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 242
    goto :goto_0

    .line 249
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 252
    :cond_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 259
    :cond_4
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :sswitch_4
    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 262
    :sswitch_5
    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x11 -> :sswitch_4
        0x21 -> :sswitch_4
        0x42 -> :sswitch_4
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method private greylist-max-o findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 307
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p1, p2}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    nop

    .line 313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 314
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 315
    const/4 v1, 0x0

    return-object v1

    .line 317
    :cond_0
    packed-switch p5, :pswitch_data_0

    .line 323
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 319
    :pswitch_0
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 321
    :pswitch_1
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 310
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedFocusComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 311
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 282
    .local p3, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0, p3, p1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->setFocusables(Ljava/util/List;Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v0, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v0}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    nop

    .line 287
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    .local v0, "count":I
    sparse-switch p4, :sswitch_data_0

    .line 299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :sswitch_0
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 297
    :sswitch_1
    invoke-static {p1, p2, p3, v0}, Landroid/view/FocusFinder;->getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 285
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/view/FocusFinder;->mUserSpecifiedClusterComparator:Landroid/view/FocusFinder$UserSpecifiedFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$UserSpecifiedFocusComparator;->recycle()V

    .line 286
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 195
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "userSetNextFocus":Landroid/view/View;
    move-object v1, v0

    .line 197
    .local v1, "cycleCheck":Landroid/view/View;
    const/4 v2, 0x1

    .line 198
    .local v2, "cycleStep":Z
    :cond_0
    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    :cond_1
    return-object v0

    .line 205
    :cond_2
    invoke-virtual {v0, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 206
    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v1, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 208
    if-ne v1, v0, :cond_0

    .line 215
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method private greylist-max-o findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 185
    nop

    .line 186
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "userSetNextCluster":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    return-object v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getEffectiveRoot(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;

    .line 127
    if-eqz p2, :cond_5

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "effective":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 133
    .local v1, "nextParent":Landroid/view/ViewParent;
    :cond_1
    if-ne v1, p1, :cond_3

    .line 134
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    return-object v2

    .line 136
    :cond_3
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 137
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    move-object v0, v2

    .line 145
    :cond_4
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 146
    .end local v2    # "vg":Landroid/view/ViewGroup;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 147
    return-object p1

    .line 128
    .end local v0    # "effective":Landroid/view/ViewGroup;
    .end local v1    # "nextParent":Landroid/view/ViewParent;
    :cond_5
    :goto_1
    return-object p1
.end method

.method public static whitelist getInstance()Landroid/view/FocusFinder;
    .locals 1

    .line 52
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static greylist-max-o getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 379
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_0
    if-eqz p0, :cond_1

    .line 383
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 384
    .local v0, "position":I
    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_1

    .line 385
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 388
    .end local v0    # "position":I
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static greylist-max-o getNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 409
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_0

    .line 413
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 416
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 417
    .local v0, "position":I
    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_1

    .line 419
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 424
    :cond_1
    return-object p0
.end method

.method private static greylist-max-o getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 392
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_0
    if-eqz p0, :cond_1

    .line 396
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 397
    .local v0, "position":I
    if-lez v0, :cond_1

    .line 398
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 401
    .end local v0    # "position":I
    :cond_1
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static greylist-max-o getPreviousKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 432
    .local p2, "clusters":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p1, :cond_0

    .line 436
    add-int/lit8 v0, p3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 439
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 440
    .local v0, "position":I
    if-lez v0, :cond_1

    .line 442
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    return-object v1

    .line 447
    :cond_1
    return-object p0
.end method

.method private greylist-max-o isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .line 768
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p4, :sswitch_data_0

    .line 778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 772
    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 774
    :sswitch_2
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 770
    :sswitch_3
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final greylist-max-o isValidId(I)Z
    .locals 1
    .param p0, "id"    # I

    .line 783
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "r"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "r"    # Landroid/view/View;
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    invoke-static {v0}, Landroid/view/FocusFinder;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findUserSetNextKeyboardNavigationCluster(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0
.end method

.method static greylist-max-o majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 613
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static greylist-max-o majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 617
    sparse-switch p0, :sswitch_data_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :sswitch_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 621
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 623
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 619
    :sswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method static greylist-max-o majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 638
    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static greylist-max-o majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 642
    sparse-switch p0, :sswitch_data_0

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :sswitch_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0

    .line 646
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0

    .line 648
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    .line 644
    :sswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method static greylist-max-o minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .line 665
    sparse-switch p0, :sswitch_data_0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 676
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 677
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 675
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 669
    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 671
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 669
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .line 327
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    .local v0, "rootBottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 329
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    return-void
.end method

.method private greylist-max-o setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .line 333
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 334
    .local v0, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 335
    .local v1, "rootLeft":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    return-void
.end method

.method public static blacklist sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 7
    .param p0, "views"    # [Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "isRtl"    # Z

    .line 878
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, v0, Landroid/view/FocusFinder;->mFocusSorter:Landroid/view/FocusFinder$FocusSorter;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/FocusFinder$FocusSorter;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 879
    return-void
.end method


# virtual methods
.method greylist-max-o beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 500
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 501
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 504
    .local v1, "rect2InSrcBeam":Z
    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 515
    return v4

    .line 519
    :cond_1
    const/16 v3, 0x11

    if-eq p1, v3, :cond_4

    const/16 v3, 0x42

    if-ne p1, v3, :cond_2

    goto :goto_0

    .line 527
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 528
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-ge v3, v5, :cond_3

    move v2, v4

    .line 527
    :cond_3
    return v2

    .line 520
    :cond_4
    :goto_0
    return v4

    .line 505
    :cond_5
    :goto_1
    return v2
.end method

.method greylist-max-o beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .line 577
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 580
    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_0
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .locals 16
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "direction"    # I
    .param p5, "deltas"    # [I

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v5

    .line 696
    .local v5, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v6, 0x7fffffff

    .line 697
    .local v6, "minDistance":I
    const/4 v7, 0x0

    .line 699
    .local v7, "closest":Landroid/view/View;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 701
    .local v8, "numTouchables":I
    iget-object v9, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v9

    .line 703
    .local v9, "edgeSlop":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 704
    .local v10, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 706
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v8, :cond_3

    .line 707
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 710
    .local v13, "touchable":Landroid/view/View;
    invoke-virtual {v13, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 712
    const/4 v14, 0x1

    invoke-virtual {v1, v13, v11, v14, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 714
    invoke-direct {v0, v2, v3, v11, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 715
    goto :goto_3

    .line 718
    :cond_0
    const v15, 0x7fffffff

    .line 720
    .local v15, "distance":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 731
    :sswitch_0
    iget v15, v11, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 725
    :sswitch_1
    iget v15, v11, Landroid/graphics/Rect;->left:I

    .line 726
    goto :goto_1

    .line 728
    :sswitch_2
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    add-int/lit8 v15, v0, 0x1

    .line 729
    goto :goto_1

    .line 722
    :sswitch_3
    iget v0, v11, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    add-int/lit8 v15, v0, 0x1

    .line 723
    nop

    .line 735
    :goto_1
    if-ge v15, v9, :cond_2

    .line 737
    if-eqz v7, :cond_1

    .line 738
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ge v15, v6, :cond_2

    .line 740
    :cond_1
    move v0, v15

    .line 741
    .end local v6    # "minDistance":I
    .local v0, "minDistance":I
    move-object v6, v13

    .line 742
    .end local v7    # "closest":Landroid/view/View;
    .local v6, "closest":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 743
    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_1

    goto :goto_2

    .line 754
    :sswitch_4
    aput v15, p5, v14

    goto :goto_2

    .line 748
    :sswitch_5
    aput v15, p5, v7

    .line 749
    goto :goto_2

    .line 751
    :sswitch_6
    neg-int v7, v15

    aput v7, p5, v14

    .line 752
    goto :goto_2

    .line 745
    :sswitch_7
    neg-int v14, v15

    aput v14, p5, v7

    .line 746
    nop

    .line 706
    .end local v13    # "touchable":Landroid/view/View;
    .end local v15    # "distance":I
    :goto_2
    move-object v7, v6

    move v6, v0

    .end local v0    # "minDistance":I
    .local v6, "minDistance":I
    .restart local v7    # "closest":Landroid/view/View;
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 760
    .end local v12    # "i":I
    :cond_3
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_7
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method public final whitelist findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 92
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 6
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 342
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
    const/4 v0, 0x0

    sparse-switch p5, :sswitch_data_0

    goto :goto_0

    .line 354
    :sswitch_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    goto :goto_0

    .line 351
    :sswitch_2
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 352
    goto :goto_0

    .line 345
    :sswitch_3
    iget-object v1, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 346
    nop

    .line 357
    :goto_0
    const/4 v0, 0x0

    .line 359
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 360
    .local v1, "numFocusables":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 361
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 364
    .local v3, "focusable":Landroid/view/View;
    if-eq v3, p3, :cond_1

    if-ne v3, p2, :cond_0

    goto :goto_2

    .line 367
    :cond_0
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 368
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 370
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    move-object v0, v3

    .line 360
    .end local v3    # "focusable":Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    .end local v2    # "i":I
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "currentCluster"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "next":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/view/FocusFinder;->findNextUserSpecifiedKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    return-object v0

    .line 169
    :cond_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 171
    .local v1, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {p1, v1, p3}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-direct {p0, p1, p2, v1, p3}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 178
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    nop

    .line 180
    return-object v0

    .line 178
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    throw v2
.end method

.method greylist-max-o getWeightedDistanceFor(JJ)J
    .locals 4
    .param p1, "majorAxisDistance"    # J
    .param p3, "minorAxisDistance"    # J

    .line 537
    const-wide/16 v0, 0xd

    mul-long/2addr v0, p1

    mul-long/2addr v0, p1

    mul-long v2, p3, p3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method greylist-max-o isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .line 464
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 465
    return v1

    .line 470
    :cond_0
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 471
    return v2

    .line 475
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    return v2

    .line 480
    :cond_2
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    return v1

    .line 485
    :cond_3
    nop

    .line 486
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v3, v0

    .line 487
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    .line 485
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v3

    .line 489
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v5, v0

    .line 490
    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    int-to-long v7, v0

    .line 488
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/FocusFinder;->getWeightedDistanceFor(JJ)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v1, v2

    .line 485
    :cond_4
    return v1
.end method

.method greylist-max-o isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .line 550
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 555
    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_3

    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 558
    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_4

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_5

    :cond_4
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    .line 552
    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_6

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_7

    :cond_6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist-max-o isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .line 593
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 597
    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 599
    :sswitch_2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 595
    :sswitch_3
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method
