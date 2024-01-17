create sequence seq_member;
create table nuka_member (
    seq bigint not null default nextval('seq_member'),
    email varchar(320) not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    password CHAR(64) not null,
    create_dt timestamp not null,
    update_dt timestamp not null,
    constraint pk_member primary key (seq)
);

comment on table nuka_member is '회원';
comment on column nuka_member.seq is '회원번호';
comment on column nuka_member.email is '이메일';
comment on column nuka_member.first_name is '성';
comment on column nuka_member.last_name is '이름';
comment on column nuka_member.password is '비밀번호';
comment on column nuka_member.create_dt is '생성일자';
comment on column nuka_member.update_dt is '수정일자';

create sequence seq_company;
create table nuka_company (
    seq bigint not null default nextval('seq_company'),
    name varchar(255) not null,
    create_dt timestamp not null,
    update_dt timestamp not null,
    constraint pk_company primary key (seq)
);

comment on column nuka_company.create_dt is '생성일자';
comment on column nuka_company.update_dt is '수정일자';