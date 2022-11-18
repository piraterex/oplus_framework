.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForPattern;
.super Ljava/lang/Object;
.source "Parcelling.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/Parcelling$BuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 283
    check-cast p1, Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForPattern;->parcel(Ljava/util/regex/Pattern;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/util/regex/Pattern;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "item"    # Ljava/util/regex/Pattern;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I

    .line 287
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForPattern;->unparcel(Landroid/os/Parcel;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_0
    return-object v1
.end method
