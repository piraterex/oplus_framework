.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final whitelist INVALID_POSITION:I = -0x1

.field public static final whitelist INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final whitelist ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final whitelist ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final greylist-max-o SYNC_FIRST_POSITION:I = 0x1

.field static final greylist-max-o SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final greylist-max-o SYNC_SELECTED_POSITION:I


# instance fields
.field greylist-max-o mBlockLayoutRequests:Z

.field greylist-max-p mDataChanged:Z

.field private greylist-max-o mDesiredFocusableInTouchModeState:Z

.field private greylist-max-o mDesiredFocusableState:I

.field private greylist-max-o mEmptyView:Landroid/view/View;

.field greylist mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field greylist-max-o mInLayout:Z

.field greylist-max-o mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private greylist-max-o mLayoutHeight:I

.field greylist mNeedSync:Z

.field greylist mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist mNextSelectedRowId:J

.field greylist-max-o mOldItemCount:I

.field greylist mOldSelectedPosition:I

.field greylist-max-o mOldSelectedRowId:J

.field greylist mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field greylist-max-o mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private greylist-max-o mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field greylist mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-o mSelectedRowId:J

.field private greylist-max-o mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field greylist-max-o mSpecificTop:I

.field greylist-max-o mSyncHeight:J

.field greylist-max-o mSyncMode:I

.field greylist mSyncPosition:I

.field greylist-max-o mSyncRowId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPendingSelectionNotifier(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnItemSelected(Landroid/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 252
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 256
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 260
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 261
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 264
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 95
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 105
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 138
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 167
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 174
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 180
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 187
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 219
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 225
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 236
    const/16 v1, 0x10

    iput v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 249
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 267
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 268
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 272
    if-ne v2, v1, :cond_1

    .line 274
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 276
    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .line 59
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o dispatchOnItemSelected()V
    .locals 0

    .line 968
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 969
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 970
    return-void
.end method

.method private greylist-max-o fireOnSelected()V
    .locals 8

    .line 973
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 974
    return-void

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 977
    .local v0, "selection":I
    if-ltz v0, :cond_1

    .line 978
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    .line 979
    .local v7, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 980
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    .line 979
    move-object v2, p0

    move-object v3, v7

    move v4, v0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 981
    .end local v7    # "v":Landroid/view/View;
    goto :goto_0

    .line 982
    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v1, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 984
    :goto_0
    return-void
.end method

.method private greylist-max-o isScrollableForAccessibility()Z
    .locals 5

    .line 1055
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1056
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1057
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 1058
    .local v2, "itemCount":I
    if-lez v2, :cond_1

    .line 1059
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1058
    :goto_0
    return v1

    .line 1061
    .end local v2    # "itemCount":I
    :cond_2
    return v1
.end method

.method private greylist-max-o performAccessibilityActionsOnSelected()V
    .locals 2

    .line 987
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    return-void

    .line 990
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 991
    .local v0, "position":I
    if-ltz v0, :cond_1

    .line 993
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 995
    :cond_1
    return-void
.end method

.method private greylist-max-o updateEmptyStatus(Z)V
    .locals 7
    .param p1, "empty"    # Z

    .line 799
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const/4 p1, 0x0

    .line 803
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 804
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 805
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 806
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 815
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_4

    .line 816
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v4, p0, Landroid/widget/AdapterView;->mTop:I

    iget v5, p0, Landroid/widget/AdapterView;->mRight:I

    iget v6, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_1

    .line 819
    :cond_2
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 820
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 822
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 511
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 524
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 552
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 537
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1

    .line 1066
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o checkFocus()V
    .locals 6

    .line 780
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 781
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 782
    .local v3, "empty":Z
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    .line 786
    .local v4, "focusable":Z
    :goto_3
    if-eqz v4, :cond_4

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 787
    if-eqz v4, :cond_5

    iget v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 788
    iget-object v5, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 789
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :cond_7
    :goto_6
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 791
    :cond_8
    return-void
.end method

.method greylist-max-o checkSelectionChanged()V
    .locals 4

    .line 1139
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1140
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1141
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1142
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1147
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    .line 1150
    :cond_2
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1000
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1001
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    const/4 v1, 0x1

    return v1

    .line 1005
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 859
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 860
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 851
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 852
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1316
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1318
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const-string/jumbo v1, "scrolling:firstPosition"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1319
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    const-string/jumbo v1, "list:nextSelectedPosition"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1320
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    long-to-float v0, v0

    const-string/jumbo v1, "list:nextSelectedRowId"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 1321
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const-string/jumbo v1, "list:selectedPosition"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1322
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    const-string/jumbo v1, "list:itemCount"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1323
    return-void
.end method

.method greylist-max-o findSyncPosition()I
    .locals 17

    .line 1161
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1163
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1164
    return v2

    .line 1167
    :cond_0
    iget-wide v3, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1168
    .local v3, "idToMatch":J
    iget v5, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1171
    .local v5, "seed":I
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    .line 1172
    return v2

    .line 1176
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1177
    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    .line 1184
    .local v7, "endTime":J
    move v9, v5

    .line 1187
    .local v9, "first":I
    move v10, v5

    .line 1190
    .local v10, "last":I
    const/4 v11, 0x0

    .line 1200
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v12

    .line 1201
    .local v12, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v12, :cond_2

    .line 1202
    return v2

    .line 1205
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-gtz v13, :cond_a

    .line 1206
    invoke-interface {v12, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1207
    .local v13, "rowId":J
    cmp-long v15, v13, v3

    if-nez v15, :cond_3

    .line 1209
    return v5

    .line 1212
    :cond_3
    add-int/lit8 v15, v1, -0x1

    const/16 v16, 0x1

    if-ne v10, v15, :cond_4

    move/from16 v15, v16

    goto :goto_1

    :cond_4
    move v15, v6

    .line 1213
    .local v15, "hitLast":Z
    :goto_1
    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v6

    .line 1215
    .local v16, "hitFirst":Z
    :goto_2
    if-eqz v15, :cond_6

    if-eqz v16, :cond_6

    .line 1217
    goto :goto_4

    .line 1220
    :cond_6
    if-nez v16, :cond_9

    if-eqz v11, :cond_7

    if-nez v15, :cond_7

    goto :goto_3

    .line 1226
    :cond_7
    if-nez v15, :cond_8

    if-nez v11, :cond_2

    if-nez v16, :cond_2

    .line 1228
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 1229
    move v5, v9

    .line 1231
    const/4 v11, 0x1

    goto :goto_0

    .line 1222
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 1223
    move v5, v10

    .line 1225
    const/4 v11, 0x0

    goto :goto_0

    .line 1236
    .end local v13    # "rowId":J
    .end local v15    # "hitLast":Z
    .end local v16    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1025
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public whitelist getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 641
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public whitelist getEmptyView()Landroid/view/View;
    .locals 1

    .line 740
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getFirstVisiblePosition()I
    .locals 1

    .line 693
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public whitelist getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 831
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 832
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public whitelist getItemIdAtPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .line 836
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 837
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_1
    return-wide v1
.end method

.method public whitelist getLastVisiblePosition()I
    .locals 2

    .line 703
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 316
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 405
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 452
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public whitelist getPositionForView(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 661
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object v0, p1

    .line 664
    .local v0, "listItem":Landroid/view/View;
    :goto_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    .local v3, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 665
    move-object v0, v3

    goto :goto_0

    .line 670
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    nop

    .line 672
    if-eqz v0, :cond_2

    .line 674
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 675
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 676
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 677
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    return v1

    .line 675
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 683
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_2
    return v1

    .line 667
    :catch_0
    move-exception v2

    .line 669
    .local v2, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 625
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 626
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 627
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 628
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 630
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 611
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 602
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract whitelist getSelectedView()Landroid/view/View;
.end method

.method greylist-max-o handleDataChanged()V
    .locals 6

    .line 1070
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1071
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1073
    .local v1, "found":Z
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 1078
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1081
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1085
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v3

    .line 1086
    .local v3, "newPos":I
    if-ltz v3, :cond_0

    .line 1088
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v5

    .line 1089
    .local v5, "selectablePos":I
    if-ne v5, v3, :cond_0

    .line 1091
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1092
    const/4 v1, 0x1

    .line 1096
    .end local v3    # "newPos":I
    .end local v5    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1098
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1101
    .restart local v3    # "newPos":I
    if-lt v3, v0, :cond_1

    .line 1102
    add-int/lit8 v3, v0, -0x1

    .line 1104
    :cond_1
    if-gez v3, :cond_2

    .line 1105
    const/4 v3, 0x0

    .line 1109
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1110
    .local v4, "selectablePos":I
    if-gez v4, :cond_3

    .line 1112
    invoke-virtual {p0, v3, v2}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1114
    :cond_3
    if-ltz v4, :cond_4

    .line 1115
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1116
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1117
    const/4 v1, 0x1

    .line 1121
    .end local v3    # "newPos":I
    .end local v4    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1123
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1124
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1125
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1126
    iput-wide v4, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1127
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1128
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1131
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1132
    return-void
.end method

.method greylist-max-o isInFilterMode()Z
    .locals 1

    .line 750
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 1248
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 915
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 916
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 917
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1042
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1043
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1044
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1045
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1048
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1049
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1050
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1051
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1052
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1031
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1032
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1033
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1034
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1037
    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 592
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 593
    return-void
.end method

.method public whitelist onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 1334
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1335
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .locals 2
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 1341
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 1343
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1345
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1346
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_1

    return-void

    .line 1348
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1349
    .local v1, "options":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1350
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    .line 1353
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "options":[Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1011
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1014
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1016
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1017
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1018
    const/4 v1, 0x1

    return v1

    .line 1020
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 334
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mViewExt:Landroid/view/IViewExt;

    invoke-interface {v0}, Landroid/view/IViewExt;->hookPerformClick()V

    .line 338
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 344
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 352
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 353
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_1

    .line 355
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    .line 358
    .restart local v0    # "result":Z
    :goto_1
    if-eqz p1, :cond_3

    .line 359
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 361
    :cond_3
    return v0
.end method

.method greylist-max-o rememberSyncState()V
    .locals 5

    .line 1283
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1285
    iget v1, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1286
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1288
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1289
    .local v0, "v":Landroid/view/View;
    iget-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1290
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1291
    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1294
    :cond_0
    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1295
    .end local v0    # "v":Landroid/view/View;
    goto :goto_1

    .line 1297
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1298
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1299
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1300
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_0

    .line 1302
    :cond_2
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1304
    :goto_0
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1305
    if-eqz v1, :cond_3

    .line 1306
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1308
    :cond_3
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1311
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 2

    .line 587
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 565
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 577
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist selectionChanged()V
    .locals 2

    .line 941
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 943
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 944
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 945
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 957
    :cond_1
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_2

    .line 950
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v1, :cond_3

    .line 951
    new-instance v1, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v1, p0, v0}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier-IA;)V

    iput-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    goto :goto_1

    .line 953
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 955
    :goto_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 961
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 962
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_5

    .line 963
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 965
    :cond_5
    return-void
.end method

.method public abstract whitelist setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public whitelist setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 719
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 722
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 724
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 727
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 728
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 729
    .local v0, "empty":Z
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 730
    return-void
.end method

.method public whitelist setFocusable(I)V
    .locals 4
    .param p1, "focusable"    # I

    .line 755
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 756
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 758
    .local v2, "empty":Z
    :goto_1
    iput p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 759
    and-int/lit8 v3, p1, 0x11

    if-nez v3, :cond_2

    .line 760
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 763
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, p1

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 764
    return-void
.end method

.method public whitelist setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .line 768
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 769
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 771
    .local v3, "empty":Z
    :goto_1
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 772
    if-eqz p1, :cond_2

    .line 773
    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 776
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 777
    return-void
.end method

.method greylist setNextSelectedPositionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1268
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1269
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1271
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    .line 1272
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1273
    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1275
    :cond_0
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 842
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 307
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 308
    return-void
.end method

.method public whitelist setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 394
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 397
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 398
    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 447
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 448
    return-void
.end method

.method greylist setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1257
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1258
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1259
    return-void
.end method

.method public abstract whitelist setSelection(I)V
.end method
