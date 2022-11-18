.class Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Lcom/android/internal/util/IScreenshotHelperWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotHelperWrapper"
.end annotation


# instance fields
.field private final blacklist mScreenshotHelperExt:Lcom/android/internal/util/IScreenshotHelperExt;

.field final synthetic blacklist this$0:Lcom/android/internal/util/ScreenshotHelper;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 1

    .line 513
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const-class v0, Lcom/android/internal/util/IScreenshotHelperExt;

    .line 516
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/IScreenshotHelperExt;

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;->mScreenshotHelperExt:Lcom/android/internal/util/IScreenshotHelperExt;

    .line 515
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Lcom/android/internal/util/IScreenshotHelperExt;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;->mScreenshotHelperExt:Lcom/android/internal/util/IScreenshotHelperExt;

    return-object v0
.end method
