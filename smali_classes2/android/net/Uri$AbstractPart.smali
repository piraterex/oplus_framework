.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation


# static fields
.field static final blacklist REPRESENTATION_DECODED:I = 0x2

.field static final blacklist REPRESENTATION_ENCODED:I = 0x1


# instance fields
.field volatile greylist-max-o decoded:Ljava/lang/String;

.field volatile greylist-max-o encoded:Ljava/lang/String;

.field private final blacklist mCanonicalRepresentation:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2006
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 2007
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/Uri$AbstractPart;->mCanonicalRepresentation:I

    .line 2008
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 2009
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_0

    .line 2010
    :cond_0
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq p2, v0, :cond_1

    .line 2011
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/Uri$AbstractPart;->mCanonicalRepresentation:I

    .line 2012
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 2013
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 2017
    :goto_0
    return-void

    .line 2015
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither encoded nor decoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final greylist-max-o getDecoded()Ljava/lang/String;
    .locals 2

    .line 2023
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2024
    .local v0, "hasDecoded":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method abstract greylist-max-o getEncoded()Ljava/lang/String;
.end method

.method final greylist-max-o writeTo(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2029
    iget v0, p0, Landroid/net/Uri$AbstractPart;->mCanonicalRepresentation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2030
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .local v0, "canonicalValue":Ljava/lang/String;
    goto :goto_0

    .line 2031
    .end local v0    # "canonicalValue":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2032
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 2037
    .restart local v0    # "canonicalValue":Ljava/lang/String;
    :goto_0
    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 2041
    iget v1, p0, Landroid/net/Uri$AbstractPart;->mCanonicalRepresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2043
    return-void

    .line 2038
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canonical value not cached ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/Uri$AbstractPart;->mCanonicalRepresentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2034
    .end local v0    # "canonicalValue":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown representation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/Uri$AbstractPart;->mCanonicalRepresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
