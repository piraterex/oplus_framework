.class public Landroid/content/res/Resources$NotFoundException;
.super Ljava/lang/RuntimeException;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotFoundException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 255
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method
