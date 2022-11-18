.class public abstract Landroid/util/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Landroid/util/Property;->mName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/util/Property;->mType:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method public static whitelist of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Property<",
            "TT;TV;>;"
        }
    .end annotation

    .line 55
    .local p0, "hostType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Landroid/util/ReflectiveProperty;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/ReflectiveProperty;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 97
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    iget-object v0, p0, Landroid/util/Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    iget-object v0, p0, Landroid/util/Property;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist isReadOnly()Z
    .locals 1

    .line 76
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
