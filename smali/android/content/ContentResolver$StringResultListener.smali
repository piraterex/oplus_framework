.class Landroid/content/ContentResolver$StringResultListener;
.super Landroid/content/ContentResolver$ResultListener;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentResolver$ResultListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 1034
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContentResolver$ResultListener;-><init>(Landroid/content/ContentResolver$ResultListener-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentResolver$StringResultListener-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentResolver$StringResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1034
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver$StringResultListener;->getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .line 1037
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
