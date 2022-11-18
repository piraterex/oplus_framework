.class Landroid/os/ZygoteStartFailedEx;
.super Ljava/lang/Exception;
.source "ZygoteProcess.java"


# direct methods
.method constructor greylist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method constructor greylist <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method
