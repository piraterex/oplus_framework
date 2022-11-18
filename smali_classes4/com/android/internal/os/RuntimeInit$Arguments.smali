.class Lcom/android/internal/os/RuntimeInit$Arguments;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field blacklist startArgs:[Ljava/lang/String;

.field blacklist startClass:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/os/RuntimeInit$Arguments;->parseArgs([Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private blacklist parseArgs([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "curArg":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 546
    aget-object v1, p1, v0

    .line 548
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    add-int/lit8 v0, v0, 0x1

    .line 550
    goto :goto_1

    .line 551
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    goto :goto_1

    .line 545
    .end local v1    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_2
    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 560
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "curArg":I
    .local v1, "curArg":I
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    .line 561
    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    .line 562
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    return-void

    .line 557
    .end local v1    # "curArg":I
    .restart local v0    # "curArg":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing classname argument to RuntimeInit!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
