.class public Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;
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
    name = "ForInternedString"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 103
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/lang/String;Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I

    .line 106
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
