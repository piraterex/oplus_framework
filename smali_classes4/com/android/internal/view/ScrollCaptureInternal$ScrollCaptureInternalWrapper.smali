.class Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;
.super Ljava/lang/Object;
.source "ScrollCaptureInternal.java"

# interfaces
.implements Lcom/android/internal/view/IScrollCaptureInternalWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/ScrollCaptureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollCaptureInternalWrapper"
.end annotation


# instance fields
.field private final blacklist mScrollCaptureInternalExt:Lcom/android/internal/view/IScrollCaptureInternalExt;

.field final synthetic blacklist this$0:Lcom/android/internal/view/ScrollCaptureInternal;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/view/ScrollCaptureInternal;)V
    .locals 1

    .line 261
    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;->this$0:Lcom/android/internal/view/ScrollCaptureInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const-class v0, Lcom/android/internal/view/IScrollCaptureInternalExt;

    .line 264
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/IScrollCaptureInternalExt;

    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;->mScrollCaptureInternalExt:Lcom/android/internal/view/IScrollCaptureInternalExt;

    .line 263
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/view/ScrollCaptureInternal;Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;-><init>(Lcom/android/internal/view/ScrollCaptureInternal;)V

    return-void
.end method


# virtual methods
.method public blacklist detectScrollingType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 273
    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->-$$Nest$smdetectScrollingType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public blacklist getExtImpl()Lcom/android/internal/view/IScrollCaptureInternalExt;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureInternal$ScrollCaptureInternalWrapper;->mScrollCaptureInternalExt:Lcom/android/internal/view/IScrollCaptureInternalExt;

    return-object v0
.end method
