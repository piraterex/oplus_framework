.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final whitelist ABOVE:I = 0x2

.field public static final whitelist ALIGN_BASELINE:I = 0x4

.field public static final whitelist ALIGN_BOTTOM:I = 0x8

.field public static final whitelist ALIGN_END:I = 0x13

.field public static final whitelist ALIGN_LEFT:I = 0x5

.field public static final whitelist ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final whitelist ALIGN_PARENT_END:I = 0x15

.field public static final whitelist ALIGN_PARENT_LEFT:I = 0x9

.field public static final whitelist ALIGN_PARENT_RIGHT:I = 0xb

.field public static final whitelist ALIGN_PARENT_START:I = 0x14

.field public static final whitelist ALIGN_PARENT_TOP:I = 0xa

.field public static final whitelist ALIGN_RIGHT:I = 0x7

.field public static final whitelist ALIGN_START:I = 0x12

.field public static final whitelist ALIGN_TOP:I = 0x6

.field public static final whitelist BELOW:I = 0x3

.field public static final whitelist CENTER_HORIZONTAL:I = 0xe

.field public static final whitelist CENTER_IN_PARENT:I = 0xd

.field public static final whitelist CENTER_VERTICAL:I = 0xf

.field private static final greylist-max-o DEFAULT_WIDTH:I = 0x10000

.field public static final whitelist END_OF:I = 0x11

.field public static final whitelist LEFT_OF:I = 0x0

.field public static final whitelist RIGHT_OF:I = 0x1

.field private static final greylist-max-o RULES_HORIZONTAL:[I

.field private static final greylist-max-o RULES_VERTICAL:[I

.field public static final whitelist START_OF:I = 0x10

.field public static final whitelist TRUE:I = -0x1

.field private static final greylist-max-o VALUE_NOT_SET:I = -0x80000000

.field private static final greylist-max-o VERB_COUNT:I = 0x16


# instance fields
.field private greylist-max-o mAllowBrokenMeasureSpecs:Z

.field private greylist-max-o mBaselineView:Landroid/view/View;

.field private final greylist-max-o mContentBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDirtyHierarchy:Z

.field private final greylist-max-o mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private greylist-max-p mGravity:I

.field private greylist-max-o mIgnoreGravity:I

.field private greylist-max-o mMeasureVerticalWithPaddingMargin:Z

.field private final greylist-max-o mSelfBounds:Landroid/graphics/Rect;

.field private greylist-max-o mSortedHorizontalChildren:[Landroid/view/View;

.field private greylist-max-o mSortedVerticalChildren:[Landroid/view/View;

.field private greylist-max-o mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    .line 201
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 252
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 212
    const v1, 0x800033

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 215
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 218
    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 223
    new-instance v1, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$DependencyGraph-IA;)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 232
    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 257
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method private greylist-max-o applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .locals 4
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I
    .param p3, "rules"    # [I

    .line 916
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 917
    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 920
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 921
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 923
    :cond_0
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_1

    aget v0, p3, v0

    if-eqz v0, :cond_1

    .line 924
    if-ltz p2, :cond_1

    .line 925
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 929
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 930
    if-eqz v1, :cond_2

    .line 931
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 933
    :cond_2
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_3

    aget v0, p3, v0

    if-eqz v0, :cond_3

    .line 934
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 937
    :cond_3
    :goto_1
    const/4 v0, 0x5

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 938
    if-eqz v1, :cond_4

    .line 939
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 940
    :cond_4
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_5

    aget v0, p3, v0

    if-eqz v0, :cond_5

    .line 941
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 944
    :cond_5
    :goto_2
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 945
    if-eqz v1, :cond_6

    .line 946
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_3

    .line 947
    :cond_6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_7

    aget v0, p3, v0

    if-eqz v0, :cond_7

    .line 948
    if-ltz p2, :cond_7

    .line 949
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 953
    :cond_7
    :goto_3
    const/16 v0, 0x9

    aget v0, p3, v0

    if-eqz v0, :cond_8

    .line 954
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 957
    :cond_8
    const/16 v0, 0xb

    aget v0, p3, v0

    if-eqz v0, :cond_9

    .line 958
    if-ltz p2, :cond_9

    .line 959
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 962
    :cond_9
    return-void
.end method

.method private greylist-max-o applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 6
    .param p1, "childParams"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I
    .param p3, "myBaseline"    # I

    .line 965
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 968
    .local v0, "rules":[I
    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    .line 969
    .local v1, "baselineOffset":I
    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    if-eq v1, v2, :cond_1

    .line 970
    if-eq p3, v2, :cond_0

    .line 971
    sub-int/2addr v1, p3

    .line 973
    :cond_0
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 974
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 975
    return-void

    .line 980
    :cond_1
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 981
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 983
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 984
    .local v3, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 985
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 987
    :cond_2
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_3

    aget v2, v0, v2

    if-eqz v2, :cond_3

    .line 988
    if-ltz p2, :cond_3

    .line 989
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 993
    :cond_3
    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 994
    if-eqz v3, :cond_4

    .line 995
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 997
    :cond_4
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_5

    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 998
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1001
    :cond_5
    :goto_1
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 1002
    if-eqz v3, :cond_6

    .line 1003
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 1004
    :cond_6
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_7

    aget v2, v0, v2

    if-eqz v2, :cond_7

    .line 1005
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1008
    :cond_7
    :goto_2
    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 1009
    if-eqz v3, :cond_8

    .line 1010
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_3

    .line 1011
    :cond_8
    iget-boolean v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v4, :cond_9

    aget v2, v0, v2

    if-eqz v2, :cond_9

    .line 1012
    if-ltz p2, :cond_9

    .line 1013
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1017
    :cond_9
    :goto_3
    const/16 v2, 0xa

    aget v2, v0, v2

    if-eqz v2, :cond_a

    .line 1018
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1021
    :cond_a
    const/16 v2, 0xc

    aget v2, v0, v2

    if-eqz v2, :cond_b

    .line 1022
    if-ltz p2, :cond_b

    .line 1023
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1026
    :cond_b
    return-void
.end method

.method private static greylist-max-o centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myWidth"    # I

    .line 1077
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1078
    .local v0, "childWidth":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    .line 1080
    .local v1, "left":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1081
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1082
    return-void
.end method

.method private static greylist-max-o centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "myHeight"    # I

    .line 1085
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1086
    .local v0, "childHeight":I
    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    .line 1088
    .local v1, "top":I
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1089
    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1090
    return-void
.end method

.method private greylist-max-o compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 3
    .param p1, "p1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "p2"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 668
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 669
    .local v0, "topDiff":I
    if-eqz v0, :cond_0

    .line 670
    return v0

    .line 672
    :cond_0
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getChildMeasureSpec(IIIIIIII)I
    .locals 13
    .param p1, "childStart"    # I
    .param p2, "childEnd"    # I
    .param p3, "childSize"    # I
    .param p4, "startMargin"    # I
    .param p5, "endMargin"    # I
    .param p6, "startPadding"    # I
    .param p7, "endPadding"    # I
    .param p8, "mySize"    # I

    .line 757
    move v0, p1

    move v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 758
    .local v3, "childSpecMode":I
    const/4 v4, 0x0

    .line 763
    .local v4, "childSpecSize":I
    const/4 v5, 0x0

    if-gez p8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    .line 764
    .local v6, "isUnspecified":Z
    :goto_0
    const/high16 v7, -0x80000000

    if-eqz v6, :cond_3

    move-object v8, p0

    iget-boolean v9, v8, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v9, :cond_4

    .line 765
    if-eq v0, v7, :cond_1

    if-eq v1, v7, :cond_1

    .line 767
    sub-int v7, v1, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 768
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    .line 769
    :cond_1
    if-ltz v2, :cond_2

    .line 771
    move/from16 v4, p3

    .line 772
    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_1

    .line 775
    :cond_2
    const/4 v4, 0x0

    .line 776
    const/4 v3, 0x0

    .line 779
    :goto_1
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 764
    :cond_3
    move-object v8, p0

    .line 783
    :cond_4
    move v9, p1

    .line 784
    .local v9, "tempStart":I
    move v10, p2

    .line 788
    .local v10, "tempEnd":I
    if-ne v9, v7, :cond_5

    .line 789
    add-int v9, p6, p4

    .line 791
    :cond_5
    if-ne v10, v7, :cond_6

    .line 792
    sub-int v11, p8, p7

    sub-int v10, v11, p5

    .line 796
    :cond_6
    sub-int v11, v10, v9

    .line 798
    .local v11, "maxAvailable":I
    const/high16 v12, 0x40000000    # 2.0f

    if-eq v0, v7, :cond_8

    if-eq v1, v7, :cond_8

    .line 800
    if-eqz v6, :cond_7

    move v12, v5

    :cond_7
    move v3, v12

    .line 801
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 803
    :cond_8
    if-ltz v2, :cond_a

    .line 805
    const/high16 v3, 0x40000000    # 2.0f

    .line 807
    if-ltz v11, :cond_9

    .line 809
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 812
    :cond_9
    move/from16 v4, p3

    goto :goto_2

    .line 814
    :cond_a
    const/4 v7, -0x1

    if-ne v2, v7, :cond_c

    .line 817
    if-eqz v6, :cond_b

    move v12, v5

    :cond_b
    move v3, v12

    .line 818
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 819
    :cond_c
    const/4 v5, -0x2

    if-ne v2, v5, :cond_e

    .line 822
    if-ltz v11, :cond_d

    .line 824
    const/high16 v3, -0x80000000

    .line 825
    move v4, v11

    goto :goto_2

    .line 829
    :cond_d
    const/4 v3, 0x0

    .line 830
    const/4 v4, 0x0

    .line 835
    :cond_e
    :goto_2
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5
.end method

.method private greylist-max-o getRelatedView([II)Landroid/view/View;
    .locals 6
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .line 1029
    aget v0, p1, p2

    .line 1030
    .local v0, "id":I
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1031
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1032
    .local v2, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v2, :cond_0

    return-object v1

    .line 1033
    :cond_0
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1036
    .local v3, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 1037
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    .line 1038
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v4}, Landroid/widget/RelativeLayout$DependencyGraph;->-$$Nest$fgetmKeyNodes(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v4

    aget v5, p1, p2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1040
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1041
    :cond_1
    iget-object v3, v2, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_0

    .line 1040
    :cond_2
    :goto_1
    return-object v1

    .line 1044
    :cond_3
    return-object v3

    .line 1047
    .end local v2    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    return-object v1
.end method

.method private greylist-max-o getRelatedViewBaselineOffset([I)I
    .locals 5
    .param p1, "rules"    # [I

    .line 1062
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1063
    .local v0, "v":Landroid/view/View;
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1065
    .local v2, "baseline":I
    if-eq v2, v1, :cond_0

    .line 1066
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1067
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 1068
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1069
    .local v1, "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v2

    return v4

    .line 1073
    .end local v1    # "anchorParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "baseline":I
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return v1
.end method

.method private greylist-max-o getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "rules"    # [I
    .param p2, "relation"    # I

    .line 1051
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1054
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1055
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    .line 1058
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 262
    sget-object v0, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RelativeLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 266
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 267
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    return-void
.end method

.method private greylist-max-o measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .line 686
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v0

    .line 691
    .local v0, "childWidthMeasureSpec":I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v1, p0

    move v9, p4

    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v1

    .line 696
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 697
    return-void
.end method

.method private greylist-max-o measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "myHeight"    # I

    .line 701
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v0

    .line 706
    .local v0, "childWidthMeasureSpec":I
    const/4 v1, 0x0

    if-gez p4, :cond_1

    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    if-nez v2, :cond_1

    .line 707
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v2, :cond_0

    .line 708
    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childHeightMeasureSpec":I
    goto :goto_2

    .line 715
    .end local v1    # "childHeightMeasureSpec":I
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_2

    .line 719
    .end local v1    # "childHeightMeasureSpec":I
    :cond_1
    iget-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v2, :cond_2

    .line 720
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v2, p4, v2

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxHeight":I
    goto :goto_0

    .line 723
    .end local v1    # "maxHeight":I
    :cond_2
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 727
    .restart local v1    # "maxHeight":I
    :goto_0
    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 728
    const/high16 v2, 0x40000000    # 2.0f

    .local v2, "heightMode":I
    goto :goto_1

    .line 730
    .end local v2    # "heightMode":I
    :cond_3
    const/high16 v2, -0x80000000

    .line 732
    .restart local v2    # "heightMode":I
    :goto_1
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    .line 735
    .end local v2    # "heightMode":I
    .local v1, "childHeightMeasureSpec":I
    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 736
    return-void
.end method

.method private greylist-max-o positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I

    .line 869
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p3, v0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 871
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 873
    :cond_0
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 874
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 876
    :goto_0
    return-void
.end method

.method private greylist-max-o positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myWidth"    # I
    .param p4, "wrapContent"    # Z

    .line 841
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    .line 842
    .local v0, "layoutDirection":I
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    .line 844
    .local v1, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 846
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 847
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 849
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 850
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 852
    const/16 v2, 0xd

    aget v2, v1, v2

    if-nez v2, :cond_3

    const/16 v2, 0xe

    aget v2, v1, v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 862
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 853
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 854
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 856
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 858
    :goto_1
    return v3

    .line 865
    :cond_5
    :goto_2
    const/16 v2, 0x15

    aget v2, v1, v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3
.end method

.method private greylist-max-o positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "myHeight"    # I
    .param p4, "wrapContent"    # Z

    .line 881
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 883
    .local v0, "rules":[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 885
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 886
    :cond_0
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 888
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 889
    :cond_1
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 891
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 900
    :cond_2
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 901
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_2

    .line 892
    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 893
    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_1

    .line 895
    :cond_4
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 896
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 898
    :goto_1
    return v2

    .line 904
    :cond_5
    :goto_2
    const/16 v1, 0xc

    aget v1, v0, v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method private greylist-max-o queryCompatibilityModes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 273
    .local v0, "version":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-gt v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    .line 274
    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    .line 275
    return-void
.end method

.method private greylist-max-o sortChildren()V
    .locals 4

    .line 385
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 386
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 387
    :cond_0
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 390
    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eq v1, v0, :cond_3

    .line 391
    :cond_2
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 394
    :cond_3
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 395
    .local v1, "graph":Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 398
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 402
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v3, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 403
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1126
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1144
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator-IA;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1149
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1150
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1154
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1155
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1156
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1157
    const/4 v0, 0x1

    return v0

    .line 1159
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    goto :goto_1

    .line 1161
    :cond_3
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1131
    sget-boolean v0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 1132
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1133
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    .line 1134
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1135
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1138
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1167
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .locals 1

    .line 375
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getGravity()I
    .locals 1

    .line 320
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method public whitelist getIgnoreGravity()I
    .locals 1

    .line 305
    iget v0, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1096
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 1098
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1099
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1100
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1101
    nop

    .line 1102
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1103
    .local v3, "st":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1098
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "st":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1106
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 39
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 407
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 408
    iput-boolean v2, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 409
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 412
    :cond_0
    const/4 v1, -0x1

    .line 413
    .local v1, "myWidth":I
    const/4 v3, -0x1

    .line 415
    .local v3, "myHeight":I
    const/4 v4, 0x0

    .line 416
    .local v4, "width":I
    const/4 v5, 0x0

    .line 418
    .local v5, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 419
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 420
    .local v7, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 421
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 424
    .local v9, "heightSize":I
    if-eqz v6, :cond_1

    .line 425
    move v1, v8

    .line 428
    :cond_1
    if-eqz v7, :cond_2

    .line 429
    move v3, v9

    .line 432
    :cond_2
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v6, v10, :cond_3

    .line 433
    move v4, v1

    .line 436
    :cond_3
    if-ne v7, v10, :cond_4

    .line 437
    move v5, v3

    .line 440
    :cond_4
    const/4 v11, 0x0

    .line 441
    .local v11, "ignore":Landroid/view/View;
    iget v12, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v13, 0x800007

    and-int/2addr v13, v12

    .line 442
    .local v13, "gravity":I
    const v14, 0x800003

    if-eq v13, v14, :cond_5

    if-eqz v13, :cond_5

    const/4 v14, 0x1

    goto :goto_0

    :cond_5
    move v14, v2

    .line 443
    .local v14, "horizontalGravity":Z
    :goto_0
    and-int/lit8 v12, v12, 0x70

    .line 444
    .end local v13    # "gravity":I
    .local v12, "gravity":I
    const/16 v13, 0x30

    if-eq v12, v13, :cond_6

    if-eqz v12, :cond_6

    const/4 v13, 0x1

    goto :goto_1

    :cond_6
    move v13, v2

    .line 446
    .local v13, "verticalGravity":Z
    :goto_1
    const v16, 0x7fffffff

    .line 447
    .local v16, "left":I
    const v17, 0x7fffffff

    .line 448
    .local v17, "top":I
    const/high16 v18, -0x80000000

    .line 449
    .local v18, "right":I
    const/high16 v19, -0x80000000

    .line 451
    .local v19, "bottom":I
    const/16 v20, 0x0

    .line 452
    .local v20, "offsetHorizontalAxis":Z
    const/16 v21, 0x0

    .line 454
    .local v21, "offsetVerticalAxis":Z
    const/4 v2, -0x1

    if-nez v14, :cond_7

    if-eqz v13, :cond_8

    :cond_7
    iget v15, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    if-eq v15, v2, :cond_8

    .line 455
    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 458
    :cond_8
    if-eq v6, v10, :cond_9

    const/4 v15, 0x1

    goto :goto_2

    :cond_9
    const/4 v15, 0x0

    .line 459
    .local v15, "isWrapContentWidth":Z
    :goto_2
    if-eq v7, v10, :cond_a

    const/16 v22, 0x1

    goto :goto_3

    :cond_a
    const/16 v22, 0x0

    :goto_3
    move/from16 v10, v22

    .line 466
    .local v10, "isWrapContentHeight":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v2

    .line 467
    .local v2, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_b

    move/from16 v23, v4

    const/4 v4, -0x1

    .end local v4    # "width":I
    .local v23, "width":I
    if-ne v1, v4, :cond_c

    .line 468
    const/high16 v1, 0x10000

    goto :goto_4

    .line 467
    .end local v23    # "width":I
    .restart local v4    # "width":I
    :cond_b
    move/from16 v23, v4

    .line 471
    .end local v4    # "width":I
    .restart local v23    # "width":I
    :cond_c
    :goto_4
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 472
    .local v4, "views":[Landroid/view/View;
    move/from16 v22, v5

    .end local v5    # "height":I
    .local v22, "height":I
    array-length v5, v4

    .line 474
    .local v5, "count":I
    const/16 v24, 0x0

    move/from16 v28, v6

    move/from16 v6, v24

    .local v6, "i":I
    .local v28, "widthMode":I
    :goto_5
    move/from16 v29, v7

    .end local v7    # "heightMode":I
    .local v29, "heightMode":I
    if-ge v6, v5, :cond_e

    .line 475
    aget-object v7, v4, v6

    .line 476
    .local v7, "child":Landroid/view/View;
    move-object/from16 v24, v4

    .end local v4    # "views":[Landroid/view/View;
    .local v24, "views":[Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v25, v5

    const/16 v5, 0x8

    .end local v5    # "count":I
    .local v25, "count":I
    if-eq v4, v5, :cond_d

    .line 477
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v5

    .line 480
    .local v5, "rules":[I
    invoke-direct {v0, v4, v1, v5}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    .line 481
    invoke-direct {v0, v7, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 483
    invoke-direct {v0, v7, v4, v1, v15}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 484
    const/16 v20, 0x1

    .line 474
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "rules":[I
    .end local v7    # "child":Landroid/view/View;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v24

    move/from16 v5, v25

    move/from16 v7, v29

    goto :goto_5

    .end local v24    # "views":[Landroid/view/View;
    .end local v25    # "count":I
    .local v4, "views":[Landroid/view/View;
    .local v5, "count":I
    :cond_e
    move-object/from16 v24, v4

    move/from16 v25, v5

    .line 489
    .end local v4    # "views":[Landroid/view/View;
    .end local v5    # "count":I
    .end local v6    # "i":I
    .restart local v24    # "views":[Landroid/view/View;
    .restart local v25    # "count":I
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 490
    .end local v24    # "views":[Landroid/view/View;
    .restart local v4    # "views":[Landroid/view/View;
    array-length v5, v4

    .line 491
    .end local v25    # "count":I
    .restart local v5    # "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 493
    .local v6, "targetSdkVersion":I
    const/4 v7, 0x0

    move/from16 v30, v18

    move/from16 v31, v19

    move/from16 v19, v2

    move/from16 v18, v12

    move/from16 v12, v16

    move/from16 v2, v17

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v8, v22

    move v9, v7

    move/from16 v7, v23

    .end local v22    # "height":I
    .end local v23    # "width":I
    .local v2, "top":I
    .local v7, "width":I
    .local v8, "height":I
    .local v9, "i":I
    .local v12, "left":I
    .local v16, "widthSize":I
    .local v17, "heightSize":I
    .local v18, "gravity":I
    .local v19, "layoutDirection":I
    .local v30, "right":I
    .local v31, "bottom":I
    :goto_6
    if-ge v9, v5, :cond_1b

    .line 494
    move/from16 v32, v5

    .end local v5    # "count":I
    .local v32, "count":I
    aget-object v5, v4, v9

    .line 495
    .local v5, "child":Landroid/view/View;
    move-object/from16 v33, v4

    .end local v4    # "views":[Landroid/view/View;
    .local v33, "views":[Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v22, v9

    const/16 v9, 0x8

    .end local v9    # "i":I
    .local v22, "i":I
    if-eq v4, v9, :cond_19

    .line 496
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 498
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v9

    invoke-direct {v0, v4, v3, v9}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 499
    invoke-direct {v0, v5, v4, v1, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 500
    invoke-direct {v0, v5, v4, v3, v10}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 501
    const/16 v21, 0x1

    .line 504
    :cond_f
    const/16 v9, 0x13

    if-eqz v15, :cond_13

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 506
    if-ge v6, v9, :cond_10

    .line 507
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v23

    sub-int v9, v1, v23

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    move/from16 v34, v3

    goto :goto_7

    .line 509
    :cond_10
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    sub-int v9, v1, v9

    move/from16 v34, v3

    .end local v3    # "myHeight":I
    .local v34, "myHeight":I
    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v3

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    .line 512
    .end local v34    # "myHeight":I
    .restart local v3    # "myHeight":I
    :cond_11
    move/from16 v34, v3

    .end local v3    # "myHeight":I
    .restart local v34    # "myHeight":I
    const/16 v3, 0x13

    if-ge v6, v3, :cond_12

    .line 513
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    .line 515
    :cond_12
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_7

    .line 504
    .end local v34    # "myHeight":I
    .restart local v3    # "myHeight":I
    :cond_13
    move/from16 v34, v3

    .line 520
    .end local v3    # "myHeight":I
    .restart local v34    # "myHeight":I
    :goto_7
    if-eqz v10, :cond_15

    .line 521
    const/16 v3, 0x13

    if-ge v6, v3, :cond_14

    .line 522
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_8

    .line 524
    :cond_14
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 528
    :cond_15
    :goto_8
    if-ne v5, v11, :cond_16

    if-eqz v13, :cond_17

    .line 529
    :cond_16
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v9

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 530
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 533
    :cond_17
    if-ne v5, v11, :cond_18

    if-eqz v14, :cond_1a

    .line 534
    :cond_18
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move/from16 v9, v30

    .end local v30    # "right":I
    .local v9, "right":I
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 535
    .end local v9    # "right":I
    .local v3, "right":I
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v9

    move/from16 v23, v2

    .end local v2    # "top":I
    .local v23, "top":I
    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v2

    move/from16 v2, v31

    .end local v31    # "bottom":I
    .local v2, "bottom":I
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v31, v2

    move/from16 v30, v3

    move/from16 v2, v23

    goto :goto_9

    .line 495
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23    # "top":I
    .end local v34    # "myHeight":I
    .local v2, "top":I
    .local v3, "myHeight":I
    .restart local v30    # "right":I
    .restart local v31    # "bottom":I
    :cond_19
    move/from16 v34, v3

    move/from16 v9, v30

    move/from16 v3, v31

    .line 493
    .end local v3    # "myHeight":I
    .end local v5    # "child":Landroid/view/View;
    .restart local v34    # "myHeight":I
    :cond_1a
    :goto_9
    add-int/lit8 v9, v22, 0x1

    move/from16 v5, v32

    move-object/from16 v4, v33

    move/from16 v3, v34

    .end local v22    # "i":I
    .local v9, "i":I
    goto/16 :goto_6

    .end local v32    # "count":I
    .end local v33    # "views":[Landroid/view/View;
    .end local v34    # "myHeight":I
    .restart local v3    # "myHeight":I
    .local v4, "views":[Landroid/view/View;
    .local v5, "count":I
    :cond_1b
    move/from16 v34, v3

    move-object/from16 v33, v4

    move/from16 v32, v5

    move/from16 v22, v9

    move/from16 v9, v30

    move/from16 v3, v31

    .line 542
    .end local v4    # "views":[Landroid/view/View;
    .end local v5    # "count":I
    .end local v30    # "right":I
    .end local v31    # "bottom":I
    .local v3, "bottom":I
    .local v9, "right":I
    .restart local v32    # "count":I
    .restart local v33    # "views":[Landroid/view/View;
    .restart local v34    # "myHeight":I
    const/4 v4, 0x0

    .line 543
    .local v4, "baselineView":Landroid/view/View;
    const/4 v5, 0x0

    .line 544
    .local v5, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    move/from16 v30, v6

    move/from16 v6, v22

    .local v6, "i":I
    .local v30, "targetSdkVersion":I
    :goto_a
    move/from16 v31, v1

    move/from16 v1, v32

    .end local v32    # "count":I
    .local v1, "count":I
    .local v31, "myWidth":I
    if-ge v6, v1, :cond_1e

    .line 545
    aget-object v22, v33, v6

    .line 546
    .local v22, "child":Landroid/view/View;
    move-object/from16 v32, v11

    .end local v11    # "ignore":Landroid/view/View;
    .local v32, "ignore":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v35, v2

    const/16 v2, 0x8

    .end local v2    # "top":I
    .local v35, "top":I
    if-eq v11, v2, :cond_1d

    .line 547
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    .local v2, "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1c

    .line 549
    invoke-direct {v0, v2, v5}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    if-gez v11, :cond_1d

    .line 550
    :cond_1c
    move-object/from16 v4, v22

    .line 551
    move-object v5, v2

    .line 544
    .end local v2    # "childParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, v32

    move/from16 v2, v35

    move/from16 v32, v1

    move/from16 v1, v31

    goto :goto_a

    .end local v32    # "ignore":Landroid/view/View;
    .end local v35    # "top":I
    .local v2, "top":I
    .restart local v11    # "ignore":Landroid/view/View;
    :cond_1e
    move/from16 v35, v2

    move-object/from16 v32, v11

    .line 555
    .end local v2    # "top":I
    .end local v6    # "i":I
    .end local v11    # "ignore":Landroid/view/View;
    .restart local v32    # "ignore":Landroid/view/View;
    .restart local v35    # "top":I
    iput-object v4, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 557
    if-eqz v15, :cond_26

    .line 560
    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int/2addr v7, v6

    .line 562
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v6, :cond_1f

    iget-object v6, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v6, :cond_1f

    .line 563
    iget-object v6, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 566
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 567
    .end local v7    # "width":I
    .local v6, "width":I
    move/from16 v11, p1

    invoke-static {v6, v11}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v7

    .line 569
    .end local v6    # "width":I
    .restart local v7    # "width":I
    if-eqz v20, :cond_25

    .line 570
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    if-ge v6, v1, :cond_24

    .line 571
    aget-object v2, v33, v6

    .line 572
    .local v2, "child":Landroid/view/View;
    move-object/from16 v36, v4

    .end local v4    # "baselineView":Landroid/view/View;
    .local v36, "baselineView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    move-object/from16 v37, v5

    const/16 v5, 0x8

    .end local v5    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v37, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eq v4, v5, :cond_22

    .line 573
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 574
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v5, v19

    .end local v19    # "layoutDirection":I
    .local v5, "layoutDirection":I
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v19

    .line 575
    .local v19, "rules":[I
    const/16 v22, 0xd

    aget v23, v19, v22

    if-nez v23, :cond_21

    const/16 v23, 0xe

    aget v23, v19, v23

    if-eqz v23, :cond_20

    goto :goto_c

    .line 577
    :cond_20
    const/16 v23, 0xb

    aget v23, v19, v23

    if-eqz v23, :cond_23

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 579
    .local v23, "childWidth":I
    iget v11, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v11, v7, v11

    sub-int v11, v11, v23

    invoke-static {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 580
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    add-int v11, v11, v23

    invoke-static {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_d

    .line 576
    .end local v23    # "childWidth":I
    :cond_21
    :goto_c
    invoke-static {v2, v4, v7}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_d

    .line 572
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "layoutDirection":I
    .local v19, "layoutDirection":I
    :cond_22
    move/from16 v5, v19

    .line 570
    .end local v2    # "child":Landroid/view/View;
    .end local v19    # "layoutDirection":I
    .restart local v5    # "layoutDirection":I
    :cond_23
    :goto_d
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, p1

    move/from16 v19, v5

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    goto :goto_b

    .end local v36    # "baselineView":Landroid/view/View;
    .end local v37    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v4, "baselineView":Landroid/view/View;
    .local v5, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19    # "layoutDirection":I
    :cond_24
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v5, v19

    .end local v4    # "baselineView":Landroid/view/View;
    .end local v19    # "layoutDirection":I
    .local v5, "layoutDirection":I
    .restart local v36    # "baselineView":Landroid/view/View;
    .restart local v37    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_e

    .line 569
    .end local v6    # "i":I
    .end local v36    # "baselineView":Landroid/view/View;
    .end local v37    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "baselineView":Landroid/view/View;
    .local v5, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19    # "layoutDirection":I
    :cond_25
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v5, v19

    .end local v4    # "baselineView":Landroid/view/View;
    .end local v19    # "layoutDirection":I
    .local v5, "layoutDirection":I
    .restart local v36    # "baselineView":Landroid/view/View;
    .restart local v37    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_e

    .line 557
    .end local v36    # "baselineView":Landroid/view/View;
    .end local v37    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "baselineView":Landroid/view/View;
    .local v5, "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19    # "layoutDirection":I
    :cond_26
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move/from16 v5, v19

    .line 587
    .end local v4    # "baselineView":Landroid/view/View;
    .end local v19    # "layoutDirection":I
    .local v5, "layoutDirection":I
    .restart local v36    # "baselineView":Landroid/view/View;
    .restart local v37    # "baselineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_e
    if-eqz v10, :cond_2e

    .line 590
    iget v2, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int/2addr v8, v2

    .line 592
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_27

    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_27

    .line 593
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 596
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 597
    .end local v8    # "height":I
    .local v2, "height":I
    move/from16 v4, p2

    invoke-static {v2, v4}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v8

    .line 599
    .end local v2    # "height":I
    .restart local v8    # "height":I
    if-eqz v21, :cond_2d

    .line 600
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_2c

    .line 601
    aget-object v6, v33, v2

    .line 602
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v4, 0x8

    if-eq v11, v4, :cond_2b

    .line 603
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 604
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v11

    .line 605
    .local v11, "rules":[I
    const/16 v19, 0xd

    aget v22, v11, v19

    if-nez v22, :cond_2a

    const/16 v22, 0xf

    aget v22, v11, v22

    if-eqz v22, :cond_28

    move/from16 v38, v10

    goto :goto_10

    .line 607
    :cond_28
    const/16 v22, 0xc

    aget v22, v11, v22

    if-eqz v22, :cond_29

    .line 608
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 609
    .local v22, "childHeight":I
    move/from16 v38, v10

    .end local v10    # "isWrapContentHeight":Z
    .local v38, "isWrapContentHeight":Z
    iget v10, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v10, v8, v10

    sub-int v10, v10, v22

    invoke-static {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 610
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v10

    add-int v10, v10, v22

    invoke-static {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_11

    .line 607
    .end local v22    # "childHeight":I
    .end local v38    # "isWrapContentHeight":Z
    .restart local v10    # "isWrapContentHeight":Z
    :cond_29
    move/from16 v38, v10

    .end local v10    # "isWrapContentHeight":Z
    .restart local v38    # "isWrapContentHeight":Z
    goto :goto_11

    .line 605
    .end local v38    # "isWrapContentHeight":Z
    .restart local v10    # "isWrapContentHeight":Z
    :cond_2a
    move/from16 v38, v10

    .line 606
    .end local v10    # "isWrapContentHeight":Z
    .restart local v38    # "isWrapContentHeight":Z
    :goto_10
    invoke-static {v6, v4, v8}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_11

    .line 602
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "rules":[I
    .end local v38    # "isWrapContentHeight":Z
    .restart local v10    # "isWrapContentHeight":Z
    :cond_2b
    move/from16 v38, v10

    const/16 v19, 0xd

    .line 600
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "isWrapContentHeight":Z
    .restart local v38    # "isWrapContentHeight":Z
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move/from16 v10, v38

    goto :goto_f

    .end local v38    # "isWrapContentHeight":Z
    .restart local v10    # "isWrapContentHeight":Z
    :cond_2c
    move/from16 v38, v10

    .end local v10    # "isWrapContentHeight":Z
    .restart local v38    # "isWrapContentHeight":Z
    goto :goto_12

    .line 599
    .end local v2    # "i":I
    .end local v38    # "isWrapContentHeight":Z
    .restart local v10    # "isWrapContentHeight":Z
    :cond_2d
    move/from16 v38, v10

    .end local v10    # "isWrapContentHeight":Z
    .restart local v38    # "isWrapContentHeight":Z
    goto :goto_12

    .line 587
    .end local v38    # "isWrapContentHeight":Z
    .restart local v10    # "isWrapContentHeight":Z
    :cond_2e
    move/from16 v38, v10

    .line 617
    .end local v10    # "isWrapContentHeight":Z
    .restart local v38    # "isWrapContentHeight":Z
    :goto_12
    if-nez v14, :cond_30

    if-eqz v13, :cond_2f

    goto :goto_13

    :cond_2f
    move/from16 v22, v3

    move-object/from16 v3, v32

    goto/16 :goto_18

    .line 618
    :cond_30
    :goto_13
    iget-object v2, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 619
    .local v2, "selfBounds":Landroid/graphics/Rect;
    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v10, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v10, v7, v10

    iget v11, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v11, v8, v11

    invoke-virtual {v2, v4, v6, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 622
    iget-object v4, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 623
    .local v4, "contentBounds":Landroid/graphics/Rect;
    iget v6, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v23, v9, v12

    sub-int v24, v3, v35

    move/from16 v22, v6

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    move/from16 v27, v5

    invoke-static/range {v22 .. v27}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 626
    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v12

    .line 627
    .local v6, "horizontalOffset":I
    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int v10, v10, v35

    .line 628
    .local v10, "verticalOffset":I
    if-nez v6, :cond_32

    if-eqz v10, :cond_31

    goto :goto_14

    :cond_31
    move/from16 v22, v3

    move-object/from16 v3, v32

    goto/16 :goto_18

    .line 629
    :cond_32
    :goto_14
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_15
    if-ge v11, v1, :cond_37

    .line 630
    move-object/from16 v19, v2

    .end local v2    # "selfBounds":Landroid/graphics/Rect;
    .local v19, "selfBounds":Landroid/graphics/Rect;
    aget-object v2, v33, v11

    .line 631
    .local v2, "child":Landroid/view/View;
    move/from16 v22, v3

    .end local v3    # "bottom":I
    .local v22, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    move-object/from16 v23, v4

    const/16 v4, 0x8

    .end local v4    # "contentBounds":Landroid/graphics/Rect;
    .local v23, "contentBounds":Landroid/graphics/Rect;
    if-eq v3, v4, :cond_35

    move-object/from16 v3, v32

    .end local v32    # "ignore":Landroid/view/View;
    .local v3, "ignore":Landroid/view/View;
    if-eq v2, v3, :cond_34

    .line 632
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v14, :cond_33

    .line 634
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v24

    move-object/from16 v25, v2

    .end local v2    # "child":Landroid/view/View;
    .local v25, "child":Landroid/view/View;
    add-int v2, v24, v6

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 635
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_16

    .line 633
    .end local v25    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    :cond_33
    move-object/from16 v25, v2

    .line 637
    .end local v2    # "child":Landroid/view/View;
    .restart local v25    # "child":Landroid/view/View;
    :goto_16
    if-eqz v13, :cond_36

    .line 638
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 639
    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_17

    .line 631
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    :cond_34
    move-object/from16 v25, v2

    .end local v2    # "child":Landroid/view/View;
    .restart local v25    # "child":Landroid/view/View;
    goto :goto_17

    .end local v3    # "ignore":Landroid/view/View;
    .end local v25    # "child":Landroid/view/View;
    .restart local v2    # "child":Landroid/view/View;
    .restart local v32    # "ignore":Landroid/view/View;
    :cond_35
    move-object/from16 v25, v2

    move-object/from16 v3, v32

    .line 629
    .end local v2    # "child":Landroid/view/View;
    .end local v32    # "ignore":Landroid/view/View;
    .restart local v3    # "ignore":Landroid/view/View;
    :cond_36
    :goto_17
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v32, v3

    move-object/from16 v2, v19

    move/from16 v3, v22

    move-object/from16 v4, v23

    goto :goto_15

    .end local v19    # "selfBounds":Landroid/graphics/Rect;
    .end local v22    # "bottom":I
    .end local v23    # "contentBounds":Landroid/graphics/Rect;
    .local v2, "selfBounds":Landroid/graphics/Rect;
    .local v3, "bottom":I
    .local v4, "contentBounds":Landroid/graphics/Rect;
    .restart local v32    # "ignore":Landroid/view/View;
    :cond_37
    move-object/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v3, v32

    .line 646
    .end local v2    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "contentBounds":Landroid/graphics/Rect;
    .end local v6    # "horizontalOffset":I
    .end local v10    # "verticalOffset":I
    .end local v11    # "i":I
    .end local v32    # "ignore":Landroid/view/View;
    .local v3, "ignore":Landroid/view/View;
    .restart local v22    # "bottom":I
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 647
    sub-int v2, v31, v7

    .line 648
    .local v2, "offsetWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v1, :cond_39

    .line 649
    aget-object v6, v33, v4

    .line 650
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_38

    .line 651
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 652
    .local v10, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v19

    sub-int v11, v19, v2

    invoke-static {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 653
    invoke-static {v10}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->-$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 648
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 658
    .end local v2    # "offsetWidth":I
    .end local v4    # "i":I
    :cond_39
    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 659
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    .line 380
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 382
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 341
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 342
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 343
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 346
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 347
    or-int/lit8 p1, p1, 0x30

    .line 350
    :cond_1
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 351
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 353
    :cond_2
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 357
    const v0, 0x800007

    and-int v1, p1, v0

    .line 358
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 359
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 360
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 362
    :cond_0
    return-void
.end method

.method public whitelist setIgnoreGravity(I)V
    .locals 0
    .param p1, "viewId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 295
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 296
    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .locals 3
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 366
    and-int/lit8 v0, p1, 0x70

    .line 367
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_0

    .line 368
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 369
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 371
    :cond_0
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method
