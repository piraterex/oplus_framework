.class public Lcom/android/internal/view/ScrollCaptureInternal;
.super Ljava/lang/Object;
.source "ScrollCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_VERBOSE:Z = false

.field private static final blacklist DOWN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureInternal"

.field public static final blacklist TYPE_FIXED:I = 0x0

.field private static final blacklist TYPE_OPAQUE:I = 0x3

.field public static final blacklist TYPE_RECYCLING:I = 0x2

.field public static final blacklist TYPE_SCROLLING:I = 0x1

.field private static final blacklist UP:I = -0x1


# instance fields
.field private final blacklist mScrollCaptureInternalWrapper:Lcom/android/internal/view/IScrollCaptureInternalWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdetectScrollingType(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Lcom/android/internal/view/ScrollCaptureInternal;->detectScrollingType(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;-><init>(Lcom/android/internal/view/ScrollCaptureInternal;Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper-IA;)V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternal;->mScrollCaptureInternalWrapper:Lcom/android/internal/view/IScrollCaptureInternalWrapper;

    return-void
.end method

.method private static blacklist detectScrollingType(Landroid/view/View;)I
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    return v2

    .line 91
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v4, 0x3

    if-nez v1, :cond_1

    .line 95
    return v4

    .line 102
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v0, :cond_2

    .line 106
    return v5

    .line 109
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 113
    return v4

    .line 119
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    return v0

    .line 125
    :cond_4
    const-string v1, "ScrollCaptureInternal"

    const-string v4, "hint: scrollY == 0"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    return v5

    .line 139
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 147
    return v0

    .line 152
    :cond_6
    return v5
.end method

.method private static blacklist formatIntToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist resolveId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    .local v0, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 239
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 245
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .line 247
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :goto_1
    return-object v1
.end method


# virtual methods
.method public blacklist getWrapper()Lcom/android/internal/view/IScrollCaptureInternalWrapper;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternal;->mScrollCaptureInternalWrapper:Lcom/android/internal/view/IScrollCaptureInternalWrapper;

    return-object v0
.end method

.method public blacklist requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;

    .line 174
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternal;->mScrollCaptureInternalWrapper:Lcom/android/internal/view/IScrollCaptureInternalWrapper;

    .line 175
    invoke-interface {v0}, Lcom/android/internal/view/IScrollCaptureInternalWrapper;->getExtImpl()Lcom/android/internal/view/IScrollCaptureInternalExt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IScrollCaptureInternalExt;->requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    .line 176
    .local v0, "callback":Landroid/view/ScrollCaptureCallback;
    if-eqz v0, :cond_0

    .line 177
    return-object v0

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->detectScrollingType(Landroid/view/View;)I

    move-result v1

    .line 186
    .local v1, "i":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    instance-of v2, p1, Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 215
    const-string v2, "ScrollCaptureInternal"

    const-string/jumbo v3, "scroll capture: Using WebView support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v3, p1

    check-cast v3, Landroid/webkit/WebView;

    new-instance v4, Lcom/android/internal/view/WebViewCaptureHelper;

    invoke-direct {v4}, Lcom/android/internal/view/WebViewCaptureHelper;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v2

    .line 201
    :pswitch_1
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Lcom/android/internal/view/ListViewCaptureHelper;

    invoke-direct {v4}, Lcom/android/internal/view/ListViewCaptureHelper;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v2

    .line 206
    :cond_1
    new-instance v2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/internal/view/RecyclerViewCaptureHelper;

    invoke-direct {v4}, Lcom/android/internal/view/RecyclerViewCaptureHelper;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v2

    .line 193
    :pswitch_2
    new-instance v2, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/internal/view/ScrollViewCaptureHelper;

    invoke-direct {v4}, Lcom/android/internal/view/ScrollViewCaptureHelper;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v2

    .line 225
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
