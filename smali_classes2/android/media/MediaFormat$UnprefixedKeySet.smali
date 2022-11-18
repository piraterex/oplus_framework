.class Landroid/media/MediaFormat$UnprefixedKeySet;
.super Landroid/media/MediaFormat$FilteredMappedKeySet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnprefixedKeySet"
.end annotation


# instance fields
.field private blacklist mPrefix:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/MediaFormat;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaFormat;Ljava/lang/String;)V
    .locals 0
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1988
    iput-object p1, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->this$0:Landroid/media/MediaFormat;

    .line 1989
    invoke-direct {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;-><init>(Landroid/media/MediaFormat;)V

    .line 1990
    iput-object p2, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->mPrefix:Ljava/lang/String;

    .line 1991
    return-void
.end method


# virtual methods
.method protected blacklist keepKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1994
    iget-object v0, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected blacklist mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .line 2002
    return-object p1
.end method

.method protected blacklist mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 1998
    return-object p1
.end method
