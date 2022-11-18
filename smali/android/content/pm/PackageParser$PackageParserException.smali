.class public Landroid/content/pm/PackageParser$PackageParserException;
.super Ljava/lang/Exception;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageParserException"
.end annotation


# instance fields
.field public final greylist-max-o error:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 8726
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8727
    iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    .line 8728
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 8731
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8732
    iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    .line 8733
    return-void
.end method
