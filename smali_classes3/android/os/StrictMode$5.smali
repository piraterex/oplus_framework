.class Landroid/os/StrictMode$5;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$VmPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api onPathAccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 1904
    if-nez p1, :cond_0

    return-void

    .line 1907
    :cond_0
    const-string v0, "/data/user/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1908
    const-string v0, "/data/media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1909
    const-string v0, "/data/system_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1910
    const-string v0, "/data/misc_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1911
    const-string v0, "/data/vendor_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1912
    const-string v0, "/storage/emulated/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1923
    :cond_1
    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1924
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/StrictMode;->-$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V

    goto :goto_2

    .line 1913
    :cond_2
    :goto_0
    const/16 v0, 0x2f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1914
    .local v1, "second":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1915
    .local v2, "third":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1916
    .local v0, "fourth":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    return-void

    .line 1919
    :cond_3
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1920
    .local v3, "userId":I
    invoke-static {p1, v3}, Landroid/os/StrictMode;->-$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    .end local v3    # "userId":I
    goto :goto_1

    .line 1921
    :catch_0
    move-exception v3

    .line 1923
    .end local v0    # "fourth":I
    .end local v1    # "second":I
    .end local v2    # "third":I
    :cond_4
    :goto_1
    nop

    .line 1926
    :goto_2
    return-void
.end method
