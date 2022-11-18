.class Landroid/filterfw/core/AsyncRunner$RunnerResult;
.super Ljava/lang/Object;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnerResult"
.end annotation


# instance fields
.field public greylist-max-o exception:Ljava/lang/Exception;

.field public greylist-max-o status:I

.field final synthetic blacklist this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor blacklist <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 p1, 0x0

    iput p1, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$RunnerResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method
