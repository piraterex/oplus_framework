.class Lcom/android/internal/org/bouncycastle/util/Strings$1;
.super Ljava/lang/Object;
.source "Strings.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/util/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/Strings$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/String;
    .locals 1

    .line 31
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
