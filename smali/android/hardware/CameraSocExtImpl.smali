.class public Landroid/hardware/CameraSocExtImpl;
.super Ljava/lang/Object;
.source "CameraSocExtImpl.java"

# interfaces
.implements Landroid/hardware/ICameraSocExt;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public whitelist needExposeAuxCamera()Z
    .locals 6

    .line 14
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "vendor.camera.aux.packagelist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "packageList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 21
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 22
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 23
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    const/4 v3, 0x1

    return v3

    .line 27
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 30
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
