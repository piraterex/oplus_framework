.class Landroid/content/ContentResolver$UriResultListener;
.super Landroid/content/ContentResolver$ResultListener;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentResolver$ResultListener<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 1041
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContentResolver$ResultListener;-><init>(Landroid/content/ContentResolver$ResultListener-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentResolver$UriResultListener-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentResolver$UriResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist getResultFromBundle(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .line 1044
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method protected bridge synthetic blacklist getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1041
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver$UriResultListener;->getResultFromBundle(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
