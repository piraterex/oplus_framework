.class public final Landroid/content/integrity/Rule;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/Rule$Effect;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DENY:I = 0x0

.field public static final whitelist FORCE_ALLOW:I = 0x1


# instance fields
.field private final blacklist mEffect:I

.field private final blacklist mFormula:Landroid/content/integrity/IntegrityFormula;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/content/integrity/Rule$1;

    invoke-direct {v0}, Landroid/content/integrity/Rule$1;-><init>()V

    sput-object v0, Landroid/content/integrity/Rule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/integrity/IntegrityFormula;I)V
    .locals 4
    .param p1, "formula"    # Landroid/content/integrity/IntegrityFormula;
    .param p2, "effect"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p2}, Landroid/content/integrity/Rule;->isValidEffect(I)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Unknown effect: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/integrity/IntegrityFormula;

    iput-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    .line 69
    iput p2, p0, Landroid/content/integrity/Rule;->mEffect:I

    .line 70
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Landroid/content/integrity/IntegrityFormula;->readFromParcel(Landroid/os/Parcel;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/integrity/Rule;->mEffect:I

    .line 75
    return-void
.end method

.method private static blacklist effectToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "effect"    # I

    .line 134
    packed-switch p0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown effect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    const-string v0, "FORCE_ALLOW"

    return-object v0

    .line 136
    :pswitch_1
    const-string v0, "DENY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isValidEffect(I)Z
    .locals 1
    .param p0, "effect"    # I

    .line 145
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 119
    return v0

    .line 121
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/Rule;

    .line 125
    .local v2, "that":Landroid/content/integrity/Rule;
    iget v3, p0, Landroid/content/integrity/Rule;->mEffect:I

    iget v4, v2, Landroid/content/integrity/Rule;->mEffect:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    iget-object v4, v2, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 122
    .end local v2    # "that":Landroid/content/integrity/Rule;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getEffect()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/content/integrity/Rule;->mEffect:I

    return v0
.end method

.method public whitelist getFormula()Landroid/content/integrity/IntegrityFormula;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/content/integrity/Rule;->mEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/content/integrity/Rule;->mEffect:I

    invoke-static {v1}, Landroid/content/integrity/Rule;->effectToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Rule: %s, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/content/integrity/Rule;->mFormula:Landroid/content/integrity/IntegrityFormula;

    invoke-static {v0, p1, p2}, Landroid/content/integrity/IntegrityFormula;->writeToParcel(Landroid/content/integrity/IntegrityFormula;Landroid/os/Parcel;I)V

    .line 99
    iget v0, p0, Landroid/content/integrity/Rule;->mEffect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
