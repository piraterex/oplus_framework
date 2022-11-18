.class Landroid/os/BadTypeParcelableException;
.super Landroid/os/BadParcelableException;
.source "BadTypeParcelableException.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 25
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    .line 26
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
